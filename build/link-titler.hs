#!/usr/bin/env runhaskell
{-# LANGUAGE OverloadedStrings #-}

-- link-titler.hs: add titles to bare links in a Markdown file using a database of link metadata
-- Author: Gwern Branwen
-- Date: 2022-04-01
-- When:  Time-stamp: "2022-04-01 22:32:35 gwern"
-- License: CC-0
--
-- Read a Markdown page, parse links out, look up their titles, generate a standard gwern.net-style citation ('"Title", Author1 et al Year[a-z]'),
-- and edit the raw text file to insert that title after links which have no title set in the Markdown source.
-- This makes it much easier to read a Markdown file with a lot of opaque URL references, without the extraordinarily tedious
-- mechanical busywork of hand-writing the tooltip title every time. This makes searches of the full codebase more useful as well since
-- you'll get hits on the lead author/title/year instead of needing the exact URL.
-- This can be run regularly in a cron job to keep files up to date.
-- (Note: while LinkMetadata does generate & create these tooltip titles automatically if missing, that is not helpful while *writing*
-- because you'll only see them in the live website's compiled HTML.)
--
--
-- WARNING: this can break 'simple' tables which are space-separated.
--
-- The reason for the editing-raw-text-file is because Pandoc does not preserve the original Markdown formatting/syntax (only semantics)
-- and its converted version I find uglier. The linebreaks make it harder to search. And full conversion would severely clutter the VCS history.

import Control.Monad.Parallel as Par (mapM_)

import Data.Char (isPunctuation)
import qualified Data.Map.Strict as M (lookup)
import System.Environment (getArgs)
import qualified Data.Text.IO as TIO (readFile)
import qualified Data.Text as T (append, replace, pack, unpack, Text)

import LinkMetadata (authorsToCite, readLinkMetadata, Metadata)
import Query (extractURLsAndAnchorTooltips, parseMarkdownOrHTML)
import Utils (writeUpdatedFile)

main :: IO ()
main = do args <- getArgs
          md <- readLinkMetadata
          Par.mapM_ (addTitlesToFile md) args

addTitlesToFile :: Metadata -> String -> IO ()
addTitlesToFile md filepath = do
          fileContents <- TIO.readFile filepath

          let pandoc = parseMarkdownOrHTML True fileContents
          let links = extractURLsAndAnchorTooltips pandoc

          let untitled = map (\(u,titles) -> (u, head titles)) $ filter (\(_,titles) -> length titles == 1) links :: [(T.Text, T.Text)]

          let titles = filter (\(u',t'') -> not (u' == "" || t'' == "")) $
                                 map (\(u,t') -> case M.lookup (T.unpack u) md of
                               Nothing -> ("","")
                               Just ("",_,_,_,_,_) -> ("","")
                               Just (_,"",_,_,_,_) -> ("","")
                               Just (_,_,"",_,_,_) -> ("","")
                               Just (t,aut,dt,_,_,_) -> if T.pack t == t' ||
                                                           T.replace "<em>" "_" (T.replace "</em>" "_" $ T.pack t) == t' ||
                                                           filter (not . isPunctuation) t == filter (not . isPunctuation) (T.unpack t')
                                                        then ("","") else
                                                          (u, T.pack $ "'" ++ t ++ "', " ++ authorsToCite (T.unpack u) aut dt)
                               ) untitled :: [(T.Text, T.Text)]

          let updatedFile = foldr (\(url,titleNew) text -> T.replace (url `T.append` ")")
                                                                     (url `T.append` " \"" `T.append` titleNew `T.append` "\")")
                                                                     text)
                             fileContents titles

          writeUpdatedFile "link-titler" filepath updatedFile
          return ()