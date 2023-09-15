{-# LANGUAGE OverloadedStrings #-}
module Config.LinkID where

import Data.Char (isAlpha)
import Text.Show.Pretty (ppShow)
import qualified Data.Text as T (unpack, Text)
import Utils (isUniqueAll)

linkIDOverrides :: [(String, T.Text)]
linkIDOverrides = map (\o@(_,ident) -> -- NOTE: HTML identifiers *must* start with `[a-zA-Z]`, and not numbers or periods etc
                              if not $ isAlpha $ head $ T.unpack ident then error ("Invalid link ID override! " ++ ppShow o) else o)
                      $ isUniqueAll [
       ("/doc/ai/anime/danbooru/2018-zhang-2.pdf", "zhang-et-al-2018-twostagecolorization")
       , ("/doc/ai/anime/danbooru/2020-akita-2.pdf", "akita-et-al-2020-2")
       , ("/doc/ai/anime/danbooru/2020-ko.pdf", "ko-cho-2020")
       , ("/doc/ai/nn/2019-brynjolfsson-2.pdf", "brynjolfsson-et-al-2019-nmt")
       , ("/doc/ai/nn/transformer/gpt/2019-radford.pdf#openai", "gpt-2-paper")
       , ("/doc/ai/nn/transformer/gpt/dall-e/1/2020-chen-2.pdf#openai", "chen-igpt-paper")
       , ("/doc/anime/eva/1996-animerica-conscience-otaking", "okada-2011-2")
       , ("/doc/anime/eva/1997-animeland-may-hideakianno-interview-english", "anno-2012-2")
       , ("/doc/anime/eva/2002-takeda-notenkimemoirs", "takeda-2002-2")
       , ("/doc/anime/eva/little-boy/2004-okada",     "okada-morikawa-2004-otaku-talk")
       , ("/doc/anime/eva/little-boy/2004-okada.pdf", "okada-morikawa-2004-otaku-talk-pdf")
       , ("/doc/bitcoin/2008-nakamoto", "nakamoto-2008-2")
       , ("/doc/borges/1936-borges-thetranslatorsofthethousandandonenights.pdf", "borges-1936-translators-2")
       , ("/doc/cat/psychology/2012-bradshaw-behaviourdomesticcat-ch11-undesiredbehavior.pdf",      "bradshaw-et-al-2012-undesired-behavior")
       , ("/doc/cat/psychology/2012-bradshaw-behaviourdomesticcat-ch12-causesbehavioralchange.pdf", "bradshaw-et-al-2012-causes-behavioral-change")
       , ("/doc/cat/psychology/2012-bradshaw-behaviourdomesticcat-ch3-mechanismsbehaviour.pdf",     "bradshaw-et-al-2012-mechanisms-behaviour")
       , ("/doc/cat/psychology/2012-bradshaw-behaviourdomesticcat-ch8-socialbehaviour.pdf",         "bradshaw-et-al-2012-social-behaviour")
       , ("/doc/cat/psychology/2019-dawson.pdf", "dawson-et-al-2019-2")
       , ("/doc/cs/2019-kleppmann.pdf", "kleppmann-et-al-2019-paper")
       , ("/doc/culture/1983-wolfe-thecitadeloftheautarch-thejustman", "just-man-2")
       , ("/doc/culture/2007-wolfe", "wolfe-2007")
       , ("/doc/darknet-market/2019-du.pdf", "du-et-al-2019-2")
       , ("/doc/darknet-market/2020-ladegaard.pdf", "ladegaard-2020-2")
       , ("/doc/darknet-market/2020-norbutas.pdf", "norbutas-et-al-2020-1")
       , ("/doc/darknet-market/2020-yang-3.pdf", "yang-et-al-2020-b")
       , ("/doc/design/typography/1954-chaundy-theprintingofmathematics.pdf", "chaundy-et-al-1954-2")
       , ("/doc/economics/2019-brynjolfsson-3.pdf", "brynjolfsson-et-al-2019-productivityparadox")
       , ("/doc/economics/2020-bloom.pdf", "bloom-et-al-2020-areideasgettinghardertofind-3")
       , ("/doc/economics/automation/2020-roodman.pdf", "roodman-2020-paper")
       , ("/doc/existential-risk/1985-hofstadter",     "hofstadter-1985-superrationality")
       , ("/doc/existential-risk/1985-hofstadter-sanityandsurvival.pdf", "hofstadter-1985-superrationality-pdf")
       , ("/doc/genetics/editing/2020-lu-2.pdf", "lu-2020-solo-2")
       , ("/doc/genetics/heritable/1976-loehlin-heredityenvironmentandpersonality.pdf", "loehlin-nichols-1976-link")
       , ("/doc/genetics/heritable/2015-polderman.pdf", "polderman-et-al-2015-02")
       , ("/doc/genetics/heritable/2016-domingue.pdf", "domingue-et-al-2016-gcta")
       , ("/doc/genetics/heritable/2019-border-supplement.pdf", "border-et-al-2019-supplement")
       , ("/doc/genetics/heritable/2021-ding.pdf", "ding-et-al-2021-anxiety")
       , ("/doc/genetics/selection/artificial/1936-greenwood-experimentalepidemiology.pdf", "greenwood-et-al-1936-2")
       , ("/doc/genetics/selection/artificial/1980-yoo.pdf", "yoo-1980-1-responsetoselection")
       , ("/doc/genetics/selection/artificial/2007-maejima.pdf", "maejima-et-al-2007-2")
       , ("/doc/genetics/selection/artificial/2019-karavani-supplement.pdf", "karavani-et-al-2019-supplement")
       , ("/doc/genetics/selection/natural/1979-anderson.pdf", "anderson-may-1979-2")
       , ("/doc/genetics/selection/natural/1979-may-2.pdf", "may-anderson-1979-3")
       , ("/doc/iq/1904-spearman-2.pdf", "spearman-1904-g")
       , ("/doc/iq/2013-rietveld.pdf", "rietveld-et-al-2013-2")
       , ("/doc/iq/ses/2011-gensowski.pdf", "gensowski-et-al-2011-2")
       , ("/doc/iq/ses/2018-gensowski.pdf", "gensowski-2018-2")
       , ("/doc/japanese/2002-gibson", "gibson-mud-2")
       , ("/doc/japan/poetry/shotetsu/1999-keene-seedsintheheart-shotetsu.pdf", "keene-1999-shotetsu")
       , ("/doc/japanese/poetry/teika/1999-keene-seedsintheheart-teika.pdf",    "keene-1999-teika")
       , ("/doc/longevity/2021-zhang.pdf", "zhang-et-al-2021-hair")
       , ("/doc/music/music-distraction/2012-perham.pdf", "perham-sykora-2012-2")
       , ("/doc/psychiatry/depression/2018-gordon-supplement.pdf", "gordon-et-al-2018-supplement")
       , ("/doc/psychology/1904-spearman.pdf", "spearman-1904-measurementerror")
       , ("/doc/psychology/2014-shen.pdf", "shen-et-al-2014-link")
       , ("/doc/psychology/2016-feinberg.pdf", "feinberg-2016-consciousness-2")
       , ("/doc/psychology/animal/maze/1935-maier-principlesofanimalpsychology-ch17-theanalysisofmazelearning.pdf", "maier-schneirla-1935-ch17")
       , ("/doc/psychology/cognitive-bias/2021-yang-4.pdf", "yang-et-al-2021-bargraph")
       , ("/doc/psychology/neuroscience/2021-xu-3.pdf", "xu-et-al-2021-rhesus-connectome")
       , ("/doc/radiance/2002-scholz-radiance", "scholz-2002-2")
       , ("/doc/radiance/2002-scholz-radiance#old-legends", "old-legends-2")
       , ("/doc/reinforcement-learning/model/alphago/2017-silver.pdf#deepmind", "silver-et-al-2017-alphago-zero")
       , ("/doc/reinforcement-learning/openai/2017-openai-form990.pdf", "clark-2017")
       , ("/doc/sociology/1987-rossi", "rossi-1987-2")
       , ("/doc/sociology/2021-costello.pdf", "costello-et-al-2021-lwa")
       , ("/doc/sociology/2021-sariaslan.pdf", "sariaslan-et-al-2021-foster-homes")
       , ("/doc/sociology/technology/2010-kelly-whattechnologywants-ch11-lessonsofamishhackers.pdf", "kelly-2010-ch11")
       , ("/doc/sociology/technology/2010-kelly-whattechwants-ch7-convergence.pdf",                  "kelly-2010-ch7")
       , ("/doc/statistics/bias/2020-mcabe.pdf", "mccabe-2020-2")
       , ("/doc/statistics/causality/2019-gordon.pdf", "gordon-et-al-2019-2")
       , ("/doc/statistics/decision/1983-howard-readingsondecisionanalysis-v1.pdf", "howard-matheson-1983-readings-v1")
       , ("/doc/statistics/decision/1983-howard-readingsondecisionanalysis-v2.pdf", "howard-matheson-1983-readings-v2")
       , ("/doc/statistics/peer-review/1975-johnson-2.pdf", "johnson-1975-2")
       , ("/gpt-2",       "gwern-presser-2019-poetry")
       , ("/gpt-2-music", "gwern-presser-2019-music")
       , ("/static/js/old/wikipedia-popups.js", "achmiz-2019-wikipediapopups")
       , ("http://discovery.ucl.ac.uk/10080409/8/Bradley_10080409_thesis.pdf", "bradley-2019-2")
       , ("https://fastml.com/goodbooks-10k-a-new-dataset-for-book-recommendations/", "z-2017-2")
       , ("http://www.incompleteideas.net/IncIdeas/BitterLesson.html", "sutton-2019-2")
       , ("http://www.paulgraham.com/nerds.html", "paul-graham-nerds-2")
       , ("http://www.rand.org/pubs/monographs/MG1026.html", "bahney-et-al-2010-2")
       , ("http://www.stuartcheshire.org/rants/latency.html", "luu-2017-stupid")
       , ("http://www.terrierman.com/russianfoxfarmstudy.pdf", "trut-1999-2")
       , ("https://www.vetta.org/2009/12/the-teenies/", "legg-2009-the-teenies")
       , ("https://www.vetta.org/2009/12/tick-tock-tick-tock-bing/", "legg-2009-tick-tock")
       , ("https://zenpundit.com/?p=52965", "greer-thucydides-roundtable")
       , ("https://ai.facebook.com/blog/state-of-the-art-open-source-chatbot", "blender-blog")
       , ("https://blog.research.google/2020/07/automl-zero-evolving-code-that-learns.html", "real-et-al-2020-blog")
       , ("https://artbreeder.com/", "simon-2019-2")
       , ("https://arxiv.org/abs/1610.04286", "rusu-et-al-2016-2")
       , ("https://arxiv.org/abs/1611.05397#deepmind", "jaderberg-et-al-2016-2")
       , ("https://arxiv.org/abs/1612.08810#deepmind", "silver-et-al-2016-2")
       , ("https://arxiv.org/abs/1703.03400", "finn-et-al-2017-maml")
       , ("https://arxiv.org/abs/1703.04887", "yang-et-al-2017-seqgan")
       , ("https://arxiv.org/abs/1703.09844", "huang-et-al-2017-msdnet")
       , ("https://arxiv.org/abs/1704.03453", "tramer-et-al-2017-transferable-adversarial-examples")
       , ("https://arxiv.org/abs/1705.05640", "li-et-al-2017-1")
       , ("https://arxiv.org/abs/1707.03141", "mishra-et-al-2017-2")
       , ("https://arxiv.org/abs/1708.02862", "li-et-al-2017-2")
       , ("https://arxiv.org/abs/1708.04483", "li-et-al-2017-learningwithrethinking")
       , ("https://arxiv.org/abs/1709.00103", "zhong-et-al-2017-seq2sql")
       , ("https://arxiv.org/abs/1711.08393", "wu-et-al-2017-blockdrop")
       , ("https://arxiv.org/abs/1712.01815#deepmind", "silver-et-al-2017-alphazero")
       , ("https://arxiv.org/abs/1802.08195", "elsayed-et-al-2018-human-fooling")
       , ("https://arxiv.org/abs/1805.08166", "chen-et-al-2018-learningtensorprograms")
       , ("https://arxiv.org/abs/1806.11146", "elsayed-et-al-2018-adversarial-reprogramming")
       , ("https://arxiv.org/abs/1808.04355", "burda-et-al-2018-large-scale-curiosity")
       , ("https://arxiv.org/abs/1809.04184", "chen-et-al-2018-multiscalenas")
       , ("https://arxiv.org/abs/1811.10192", "zhou-et-al-2018-tweedie")
       , ("https://arxiv.org/abs/1811.10201", "cheng-et-al-2018-instanas")
       , ("https://arxiv.org/abs/1812.01243#sensetime", "shen-et-al-2018-linerattention")
       , ("https://arxiv.org/abs/1812.02353", "chen-et-al-2018-topk")
       , ("https://arxiv.org/abs/1812.06162#openai", "mccandlish-et-al-2018-largebatchtraining")
       , ("https://arxiv.org/abs/1901.04615", "haj-ali-et-al-2019-compiler")
       , ("https://arxiv.org/abs/1904.10509#openai", "musenet-paper")
       , ("https://arxiv.org/abs/1907.11692#facebook", "liu-et-al-2019-roberta")
       , ("https://arxiv.org/abs/1908.05840", "kim-et-al-2019-tag2pix")
       , ("https://arxiv.org/abs/1908.09203#openai", "solaiman-et-al-2019-2")
       , ("https://arxiv.org/abs/1909.08593#openai",    "ziegler-et-al-2019-paper")
       , ("https://arxiv.org/abs/1910.07113#openai", "dactyl-paper")
       , ("https://arxiv.org/abs/1910.13038#google", "freeman-et-al-2019-paper")
       , ("https://arxiv.org/abs/2002.04724", "zhao-et-al-2020-1")
       , ("https://arxiv.org/abs/2002.05709#google", "chen-et-al-2020-simclrv1")
       , ("https://arxiv.org/abs/2002.06038#deepmind", "badia-et-al-2020-ngu")
       , ("https://arxiv.org/abs/2002.11296#google", "tay-et-al-2020-sinkhorn")
       , ("https://arxiv.org/abs/2003.13350#deepmind", "badia-et-al-2020-agent57")
       , ("https://arxiv.org/abs/2003.13590#msr", "li-et-al-2020-suphx")
       , ("https://arxiv.org/abs/2004.08483", "etc")
       , ("https://arxiv.org/abs/2004.13637#facebook", "blender-paper")
       , ("https://arxiv.org/abs/2005.04305#openai",    "hernandezbrown-2020-paper")
       , ("https://arxiv.org/abs/2005.11401#facebook", "lewis-et-al-2020-rag")
       , ("https://arxiv.org/abs/2005.12126#nvidia",    "kim-et-al-2020-gamegan-paper")
       , ("https://arxiv.org/abs/2006.01855", "mcilroy-young-et-al-2020-maia")
       , ("https://arxiv.org/abs/2006.02595#google", "zhao-et-al-2020-2")
       , ("https://arxiv.org/abs/2006.10029#google", "chen-et-al-2020-simclrv2")
       , ("https://arxiv.org/abs/2006.10738", "zhao-et-al-2020-3")
       , ("https://arxiv.org/abs/2008.07669", "gu-et-al-2021-hippo")
       , ("https://arxiv.org/abs/2009.03300", "hendrycks-et-al-2020-q-and-a")
       , ("https://arxiv.org/abs/2009.06097#microsoft", "wang-et-al-2020-3")
       , ("https://arxiv.org/abs/2009.06732#google", "tay-et-al-2020-efficienttransformers")
       , ("https://arxiv.org/abs/2009.14794#google", "choromanski-et-al-2020-favorplus")
       , ("https://arxiv.org/abs/2010.03997", "del-gobbo-herrera-2020")
       , ("https://arxiv.org/abs/2010.05713", "huang-et-al-2020-2")
       , ("https://arxiv.org/abs/2101.00390#facebook", "wang-et-al-2021-voxpopuli")
       , ("https://arxiv.org/abs/2101.10803", "lee-et-al-2021-acav100m")
       , ("https://arxiv.org/abs/2102.02888#microsoft", "tang-et-al-2021-1bitadam")
       , ("https://arxiv.org/abs/2102.05379", "hoogeboom-et-al-2021-categorical")
       , ("https://arxiv.org/abs/2102.12092#openai", "ramesh-et-al-2021-dalle-paper")
       , ("https://arxiv.org/abs/2102.12593", "li-et-al-2021-anigan")
       , ("https://arxiv.org/abs/2103.00823#alibaba", "lin-et-al-2021-m6")
       , ("https://arxiv.org/abs/2103.01988#facebook", "goyal-et-al-2021-seer")
       , ("https://arxiv.org/abs/2103.03206#deepmind", "jaegle-et-al-2021-perceiver")
       , ("https://arxiv.org/abs/2103.03775", "wang-et-al-2021-limgen")
       , ("https://arxiv.org/abs/2103.04174", "wu-et-al-2021-ghvae")
       , ("https://arxiv.org/abs/2103.14030", "liu-et-al-2021-swintranformer")
       , ("https://arxiv.org/abs/2103.14968", "abdal-et-al-2021-labels4free")
       , ("https://arxiv.org/abs/2104.06490", "zhang-et-al-2021-datasetgan")
       , ("https://arxiv.org/abs/2104.06678#facebook", "wang-et-al-2021-wav2vec20")
       , ("https://arxiv.org/abs/2104.07885", "liu-et-al-2021-roberta")
       , ("https://arxiv.org/abs/2104.13742", "wang-et-al-2021-minegan")
       , ("https://arxiv.org/abs/2104.14690#facebook", "wang-et-al-2021-entailment")
       , ("https://arxiv.org/abs/2105.00572#facebook", "goyal-et-al-2021-xlmrxl")
       , ("https://arxiv.org/abs/2105.02446", "li-et-al-2021-diffsinger")
       , ("https://arxiv.org/abs/2105.06597#microsoft", "zhang-et-al-2021-retgen")
       , ("https://arxiv.org/abs/2105.08050#google", "liu-et-al-2021-gmlp")
       , ("https://arxiv.org/abs/2105.12196#deepmind", "liu-et-al-2021-soccer")
       , ("https://arxiv.org/abs/2105.12842#google", "zhang-et-al-2021-nas")
       , ("https://arxiv.org/abs/2105.14211#alibaba", "zhang-et-al-2021-m6ufc")
       , ("https://arxiv.org/abs/2106.04533", "chen-et-al-2021-sparse-vits")
       , ("https://arxiv.org/abs/2106.07477#baidu", "yu-et-al-2021-s2mlp")
       , ("https://arxiv.org/abs/2106.10715", "zhang-et-al-2021-cpm2")
       , ("https://arxiv.org/abs/2107.03374#openai", "chen-et-al-2021-codex")
       , ("https://arxiv.org/abs/2107.06532", "li-et-al-2021-graphjigsaw")
       , ("https://arxiv.org/abs/2107.08590", "wang-et-al-2021-evilmodel")
       , ("https://arxiv.org/abs/2107.10224", "chen-et-al-2021-cyclemlp")
       , ("https://arxiv.org/abs/2107.12979", "millidge-et-al-2021-predictive-coding-review")
       , ("https://arxiv.org/abs/2107.14795#deepmind", "jaegle-et-al-2021-perceiverio")
       , ("https://arxiv.org/abs/2108.01072#baidu", "yu-et-al-2021-s2mlpv2")
       , ("https://arxiv.org/abs/2108.09084", "wu-et-al-2021-fastformer")
       , ("https://arxiv.org/abs/2108.13341#huawei", "guo-et-al-2021-hiremlp")
       , ("https://arxiv.org/abs/2108.13487#microsoft", "wang-et-al-2021-gpt3labeling")
       , ("https://arxiv.org/abs/2109.04699", "wang-et-al-2021-efficientclip")
       , ("https://arxiv.org/abs/2110.02488#allen", "peng-et-al-2021-abc")
       , ("https://arxiv.org/abs/2110.03888#alibaba", "lin-et-al-2021-m610t")
       , ("https://arxiv.org/abs/2110.04725#inspur", "wu-et-al-2021-yuan-1")
       , ("https://arxiv.org/abs/2110.11499", "wu-et-al-2021-wav2clip")
       , ("https://arxiv.org/abs/2110.15943#facebook", "min-et-al-2021-metaicl")
       , ("https://arxiv.org/abs/2111.00396", "gu-et-al-2021-s4")
       , ("https://arxiv.org/abs/2111.05803#google", "metz-et-al-2021-gradientoptimizationproblems")
       , ("https://arxiv.org/abs/2111.05826#google", "saharia-et-al-2021-palette")
       , ("https://arxiv.org/abs/2111.08960", "hudson-zitnick-2021-scenetransformer")
       , ("https://arxiv.org/abs/2111.09883", "liu-et-al-2021-swintranformerv2")
       , ("https://arxiv.org/abs/2111.12527", "zhang-et-al-2021-morphmlp")
       , ("https://arxiv.org/abs/2111.13792", "zhou-et-al-2021-lafite")
       , ("https://arxiv.org/abs/2112.01071", "zhou-et-al-2021-denseclip")
       , ("https://arxiv.org/abs/2112.01573", "liu-et-al-2021-fusedream")
       , ("https://arxiv.org/abs/2112.07522", "zhao-et-al-2021-lmturk")
       , ("https://arxiv.org/abs/2112.07887#microsoft", "zhang-et-al-2021-krissbert")
       , ("https://arxiv.org/abs/2112.12731#baidu", "wang-et-al-2021-ernie30titan")
       , ("https://arxiv.org/abs/2112.15283#baidu", "zhang-et-al-2021-ernievilg")
       , ("https://arxiv.org/abs/2201.01763#facebook", "shi-et-al-2022-avhubert")
       , ("https://arxiv.org/abs/2201.02605#facebook", "zhou-et-al-2022-detic")
       , ("https://arxiv.org/abs/2201.12086#salesforce", "li-et-al-2022-blip")
       , ("https://arxiv.org/abs/2202.01994#google", "bansal-et-al-2022-nmtscaling")
       , ("https://arxiv.org/abs/2205.05131#google", "tay-et-al-202-ul2")
       , ("https://arxiv.org/abs/2206.15472", "lin-et-al-2022-smolml")
       , ("https://arxiv.org/abs/2207.10397#microsoft", "chen-et-al-2022-codet")
       , ("https://arxiv.org/abs/2209.06794#google", "chen-et-al-2022-pali")
       , ("https://arxiv.org/abs/2209.14156", "tang-et-al-2022-tvlt")
       , ("https://arxiv.org/abs/2210.11399#google", "tay-et-al-2022-upalm")
       , ("https://arxiv.org/abs/math/0701086", "simkin-roychowdhury-2007-2")
       , ("https://arxiv.org/pdf/1706.03741.pdf#page=15", "christiano-et-al-2017-appendix")
       , ("https://cdn.openai.com/papers/jukebox.pdf", "jukebox-paper")
       , ("https://colab.research.google.com/github/nickwalton/AIDungeon/blob/master/AIDungeon_2.ipynb", "walton-2019-aidungeon-2-colab")
       , ("https://danluu.com/input-lag/", "luu-computer-latency")
       , ("https://danluu.com/keyboard-latency/", "luu-2017-keyboard")
       , ("https://danluu.com/term-latency/", "luu-2017-terminal")
       , ("https://danluu.com/web-bloat/", "luu-web-bloat")
       , ("https://developer.mozilla.org/en-US/docs/Web/HTML/Element/abbr", "mozdev-abbr")
       , ("https://developer.mozilla.org/en-US/docs/Web/HTML/Element/dfn", "mozdev-dfn")
       , ("https://docs.google.com/document/d/1MhA3M5ucBD7ZXcWk57_MKZ5jEgPX6_YiKye_EFP-adg/edit", "branwen-2020-gpt2-poetry-collaboration")
       , ("https://egamebook.com/blog/data-about-gamebooks/", "hracek-2015-cyoa-survey")
       , ("https://github.com/arfafax/E621-Face-Dataset", "arfafax-2020-e621")
       , ("https://github.com/arkel23/animesion", "animesion")
       , ("https://github.com/google-research/google-research/tree/master/automl_zero", "real-et-al-2020-github")
       , ("https://github.com/lllyasviel/DanbooRegion", "danbooregion")
       , ("https://github.com/lllyasviel/style2paints", "style2paints")
       , ("https://github.com/openai/lm-human-preferences", "ziegler-et-al-2019-github")
       , ("https://groups.google.com/g/pandoc-discuss/c/BDNfhctWJpg/m/bGk0wEtfBgAJ", "branwen-2020-smallcaps-filter")
       , ("https://gwern.net/doc/advertising/2020-aral.pdf", "aral-dhillon-2020-paper")
       , ("https://journals.plos.org/plosmedicine/article?id=10.1371/journal.pmed.0040352", "smith-et-al-2007-link")
       , ("https://journals.plos.org/plosone/article?id=10.1371/journal.pone.0100248", "ward-et-al-2014-2")
       , ("https://learningtopredict.github.io/#google", "freeman-et-al-2019-blog")
       , ("https://lilianweng.github.io/lil-log/2019/06/23/meta-reinforcement-learning.html#on-the-origin-of-meta-rl", "markdown-toc-on-the-origin-of-meta-rl")
       , ("https://link.springer.com/article/10.1140/epjds/s13688-021-00259-w", "bracci-et-al-2021-dnmvaccines")
       , ("https://lllyasviel.github.io/MangaFilter/", "mangafilter")
       , ("https://magenta.tensorflow.org/music-transformer", "huang-et-al-2018-code")
       , ("https://mattlakeman.org/2020/01/22/disaster-artist-insanity-is-no-shortcut-to-inspiration/", "matt-lakeman-2020-disasterartist")
       , ("https://mattlakeman.org/2020/01/22/hill-billy-elegy-the-culture-of-white-american-poverty/", "matt-lakeman-2020-hillbillyelegy")
       , ("https://mattlakeman.org/2020/01/22/peep-show-the-most-realistic-portrayal-of-evil-ive-ever-seen/", "matt-lakeman-2020-peepshow")
       , ("https://mattlakeman.org/2020/01/22/the-new-epidemic-my-experience-of-losing-a-friend-to-heroin/", "matt-lakeman-2020-heroin")
       , ("https://mattlakeman.org/2020/01/22/the-phantoms-pain-a-metal-gear-solid-v-narrative-analysis/", "matt-lakeman-2020-metalgearsolidv")
       , ("https://mattlakeman.org/2020/01/23/everything-you-need-to-know-about-napoleon-bonaparte/", "matt-lakeman-2020-napoleon")
       , ("https://mattlakeman.org/2020/01/23/little-soldiers-inside-the-chinese-education-system/", "matt-lakeman-2020-littlesoldiers")
       , ("https://mattlakeman.org/2020/03/21/against-dog-ownership/", "matt-lakeman-2020-against-dog-ownership")
       , ("https://mattlakeman.org/2020/04/27/explaining-blaming-and-being-very-slightly-sympathetic-toward-enron/", "matt-lakeman-2020-enron")
       , ("https://mattlakeman.org/2020/09/06/a-deep-dive-into-k-pop/", "matt-lakeman-2020-kpop")
       , ("https://medium.com/@NPCollapse/addendum-evaluation-of-my-model-e6734b51a830", "leahy-2019-gpt15b-evaluation")
       , ("https://medium.com/@NPCollapse/replicating-gpt2-1-5b-86454a7f26af", "leahy-2019-gpt15b-replication")
       , ("https://mlp.fandom.com/wiki/Between_Dark_and_Dawn", "wikia-2019-mlp-between-dark-and-dawn")
       , ("https://mlp.fandom.com/wiki/Daring_Doubt",          "wikia-2019-mlp-daring-doubt")
       , ("https://mlp.fandom.com/wiki/Sparkle%27s_Seven",     "wikia-2019-mlp-sparkles-seven")
       , ("https://mlp.fandom.com/wiki/The_Big_Mac_Question",  "wikia-2019-mlp-the-big-mac-question")
       , ("https://mlp.fandom.com/wiki/The_Last_Laugh",        "wikia-2019-mlp-the-last-laugh")
       , ("https://mlp.fandom.com/wiki/The_Last_Problem",      "wikia-2019-mlp-the-last-problem")
       , ("https://newcriterion.com/issues/2006/4/a-science-fiction-writer-of-the-fifties", "leithauser-2006-science-fiction-writer")
       , ("https://nv-tlabs.github.io/gameGAN/#nvidia", "kim-et-al-2020-gamegan-repo")
       , ("https://onlinelibrary.wiley.com/doi/10.1002/hbm.25572", "williams-et-al-2021-ukbb")
       , ("https://openaccess.thecvf.com/content/ICCV2021/papers/Zhang_SmartShadow_Artistic_Shadow_Drawing_Tool_for_Line_Drawings_ICCV_2021_paper.pdf", "zhang-et-al-2021-smartshadow")
       , ("https://openai.com/research/ai-and-efficiency", "hernandezbrown-2020-blog")
       , ("https://openai.com/research/better-language-models", "gpt-2-blog")
       , ("https://openai.com/research/clip", "radford-et-al-blog")
       , ("https://openai.com/research/dall-e", "ramesh-et-al-2021-dalle-blog")
       , ("https://openai.com/research/fine-tuning-gpt-2", "ziegler-et-al-2019-blog")
       , ("https://openai.com/research/image-gpt", "chen-et-al-2020-blog")
       , ("https://openai.com/research/jukebox", "jukebox-blog")
       , ("https://openai.com/research/musenet", "musenet-blog")
       , ("https://openai.com/research/openai-five-defeats-dota-2-world-champions", "oa5-blog")
       , ("https://openreview.net/forum?id=G89-1yZLFHk", "wu-et-al-2021-otter")
       , ("https://openreview.net/forum?id=St1giarCHLP", "song-et-al-2021-ddim")
       , ("https://openreview.net/forum?id=TrjbxzRcnf-#google", "wu-et-al-2021-memorizingtransformer")
       , ("https://openreview.net/forum?id=lsQCDXjOl3k#google", "ho-salimans-2021-jointguidance")
       , ("https://openreview.net/forum?id=rk6H0ZbRb", "cubuk-et-al-2018-adversarialexamples")
       , ("https://play.aidungeon.io/main/home",                                                                       "walton-2019-aidungeon-2")
       , ("https://scholars-stage.org/america-will-always-fail-at-regional-expertise/", "greer-foreign-knowledge")
       , ("https://scholars-stage.org/american-policy-makers-do-not-read-books/", "greer-strategic-ignorance")
       , ("https://scholars-stage.org/awareness-vs-action-two-modes-of-protest-in-american-history/", "greer-exitvoice")
       , ("https://scholars-stage.org/everybody-wants-a-thucydides-trap/", "greer-thucydides-trap")
       , ("https://scholars-stage.org/everything-is-worse-in-china/", "greer-totalitarianism-3")
       , ("https://scholars-stage.org/history-is-written-by-the-losers/", "greer-thucydides-historians")
       , ("https://scholars-stage.org/isis-the-mongols-and-the-return-of-ancient-challenges/", "greer-islam-3")
       , ("https://scholars-stage.org/meditations-on-maoism-ye-fus-hard-road-home/", "greer-maoism-forgetting")
       , ("https://scholars-stage.org/men-of-honor-men-of-interest/", "greer-thucydides-miletus")
       , ("https://scholars-stage.org/notes-on-the-dynamics-of-human-civilization-the-growth-revolution-part-i/", "greer-growth")
       , ("https://scholars-stage.org/ominous-parallels-what-antebellum-america-can-teach-us-about-our-modern-political-regime/", "greer-civil-war")
       , ("https://scholars-stage.org/passages-i-highlighted-in-my-copy-of-only-yesterday-an-informal-history-of-the-1920s/", "greer-only-yesterday")
       , ("https://scholars-stage.org/pre-modern-battlefields-were-absolutely-terrifying/", "greer-battlefields")
       , ("https://scholars-stage.org/questing-for-transcendence/", "greer-transcendence")
       , ("https://scholars-stage.org/radical-islamic-terrorism-in-context-pt-i/", "greer-islam-1")
       , ("https://scholars-stage.org/radical-islamic-terrorism-in-context-pt-ii/", "greer-islam-2")
       , ("https://scholars-stage.org/reflections-on-chinas-stalinist-heritage-i-a-tyrants-toolkit/", "greer-totalitarianism-1")
       , ("https://scholars-stage.org/reflections-on-chinas-stalinist-heritage-ii-just-how-totalitarian-is-modern-china/", "greer-totalitarianism-2")
       , ("https://scholars-stage.org/shakespeare-in-american-politics/", "greer-shakespeare")
       , ("https://scholars-stage.org/smallpox-on-the-steppe/", "greer-smallpox")
       , ("https://scholars-stage.org/the-cross-section-ilusion/", "greer-cross-section")
       , ("https://scholars-stage.org/the-inner-life-of-chinese-teenagers/", "greer-meihao")
       , ("https://scholars-stage.org/the-radical-sunzi/", "greer-sun-tzu")
       , ("https://scholars-stage.org/the-utterly-dysfunctional-belt-and-road/", "greer-beltandroad")
       , ("https://scholars-stage.org/tradition-is-smarter-than-you-are/", "greer-tradition")
       , ("https://scholars-stage.org/vengeance-as-justice-passages-i-highlighted-in-my-copy-of-eye-for-an-eye/", "greer-vengeance")
       , ("https://scholars-stage.org/what-cyber-war-will-look-like/", "greer-hybrid-warfare")
       , ("https://scholars-stage.org/what-edward-luttwak-doesnt-know-about-ancient-china-or-a-short-history-of-han-xiongnu-relations-pt-1/", "greer-luttwak-1")
       , ("https://scholars-stage.org/what-edward-luttwak-doesnt-know-about-ancient-china-or-a-short-history-of-han-xiongnu-relations-pt-2/", "greer-luttwak-2")
       , ("https://scholars-stage.org/when-modern-war-met-an-antique-art/", "greer-woodblock-prints")
       , ("https://scholars-stage.org/you-do-not-have-the-people/", "greer-american-isolationism")
       , ("https://seclab.bu.edu/papers/reddit-WACCO2019.pdf", "bradley-stringhini-2019-2")
       , ("https://sites.google.com/berkeley.edu/decision-transformer", "decisiontransformer-blog")
       , ("https://sites.google.com/view/videopredictioncapacity", "villegas-et-al-2019-2")
       , ("https://slatestarcodex.com/2019/04/22/1960-the-year-the-singularity-was-cancelled/", "alexander-population-growth")
       , ("https://slatestarcodex.com/2020/01/08/what-intellectual-progress-did-i-make-in-the-2010s/", "alexander-2020-2")
       , ("https://thegradient.pub/gpt2-and-the-nature-of-intelligence/", "marcus-2020-blog")
       , ("https://thisponydoesnotexist.net/", "arfafax-tpdne")
       , ("https://waifulabs.com/", "waifu-labs")
       , ("https://waifulabs.com/blog/ax", "sizigi-how")
       , ("https://web.archive.org/web/20171025141547/http://nitro.biosci.arizona.edu/zbook/NewVolume_2/pdf/Chapter37.pdf", "walsh-lynch-1997-index-selection-theory")
       , ("https://web.archive.org/web/20171025150859/http://nitro.biosci.arizona.edu/zbook/NewVolume_2/pdf/Chapter38.pdf", "walsh-lynch-1997-index-selection-application")
       , ("https://web.archive.org/web/20191127163535/http://www.aidungeon.io/2019/11/my-orc-band-and-our-quest-for-equal.html", "walton-2019-music-troupe")
       , ("https://www.aclweb.org/anthology/2020.acl-main.463.pdf", "bender-koller-2020-paper")
       , ("https://www.andrew.cmu.edu/user/nicolasc/publications/Christin-WWW13.pdf", "christin-2013-2")
       , ("https://www.biorxiv.org/content/10.1101/201020.full", "tikkanen-et-al-2017-strength")
       , ("https://www.biorxiv.org/content/10.1101/2020.01.14.905927.full", "wang-et-al-2020-twas")
       , ("https://www.biorxiv.org/content/10.1101/2021.10.02.462713.full", "yang-et-al-2021-monkey-pacman")
       , ("https://www.biorxiv.org/content/10.1101/2021.12.10.472095.full", "saul-et-al-2021-senescence-geneset")
       , ("https://www.biorxiv.org/content/early/2015/04/06/014498.full", "buliksullivan-et-al-2015-2")
       , ("https://www.biorxiv.org/content/early/2016/08/31/072306.full", "hagenaars-et-al-2016-bald")
       , ("https://www.biorxiv.org/content/early/2016/09/13/074815.full", "davies-et-al-2016-2")
       , ("https://www.biorxiv.org/content/early/2016/09/23/076794.full", "day-et-al-2016-2")
       , ("https://www.biorxiv.org/content/early/2016/10/19/081844.full", "warrier-et-al-2016-3")
       , ("https://www.biorxiv.org/content/early/2017/06/05/106203.full", "hill-et-al-2017-kin")
       , ("https://www.biorxiv.org/content/early/2017/07/07/160291.1.full", "hill-et-al-2017-2")
       , ("https://www.biorxiv.org/content/early/2017/11/14/219261.full", "kong-non")
       , ("https://www.biorxiv.org/content/early/2017/12/31/241414.full", "ma-rrblup")
       , ("https://www.biorxiv.org/content/early/2018/07/25/376897.full", "belsky-et-al-2018-2")
       , ("https://www.cl.cam.ac.uk/~bjc63/tight_scrape.pdf", "turk-et-al-2020-2")
       , ("https://www.engineeringletters.com/issues_v27/issue_3/EL_27_3_01.pdf", "liu-et-al-2019-anime-sketch-coloring")
       , ("https://www.lesswrong.com/posts/baTWMegR42PAsH9qJ/generalizing-from-one-example", "alexander-2009-typical-mind")
       , ("https://www.lesswrong.com/posts/reitXJgJXFzKpdKyd/beware-trivial-inconveniences", "alexander-2009-trivial-inconveniences")
       , ("https://www.medrxiv.org/content/10.1101/2020.09.11.20175026.full", "jami-et-al-2021-gwas-internalizing")
       , ("https://www.medrxiv.org/content/10.1101/2022.06.24.22276728.full", "chen-et-al-2022-rare-variants")
       , ("https://www.nature.com/articles/s41467-019-13585-5", "hill-et-al-20192")
       , ("https://www.nature.com/articles/s42255-021-00491-8", "xu-et-al-2021-procyanidin")
       , ("https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3339577/", "karageorghis-et-al-2012-2")
       , ("https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4294962/", "robinson-et-al-2015-2")
       , ("https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6130754/", "young-et-al-2018-rdr")
       , ("https://www.ncbi.nlm.nih.gov/pmc/articles/PMC7770104/", "couvyduchesne-et-al-2020-brain-age")
       , ("https://www.newcriterion.com/issues/2006/10/a-good-list", "leithauser-2006-good-list")
       , ("https://www.newyorker.com/magazine/2020/01/13/operatic-shows-of-force", "ross-2020-wozzeck")
       , ("https://www.newyorker.com/magazine/2020/08/31/how-wagner-shaped-hollywood", "ross-2020-wagner")
       , ("https://www.reddit.com/r/gwern/", "gwern-old.reddit.com-r-gwern-2")
       , ("https://www.sciencedirect.com/science/article/pii/S0955395919303482", "norbutas-et-al-2020-4")
       , ("https://www.theatlantic.com/magazine/archive/2006/08/nightfall/305030/", "leithauser-2006-nightfall")
       , ("https://www.thisfursonadoesnotexist.com/", "arfafax-tfdne")
       , ("https://www.thiswaifudoesnotexist.net/", "gwern-twdne-website")
      ]
