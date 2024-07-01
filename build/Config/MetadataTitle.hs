module Config.MetadataTitle where

separators :: String
separators = "—·|"

badStringPatterns, badStrings :: [String]
badStringPatterns = ["Redirecting to ", "404 "]

-- testing: unique list
badStrings = ["", " ", "Quanta Magazine", "OSF", "CAIDA Resource Catalog", "Blogger", "Log in", "Stuff", "common.redirect_permanent.title", "Search", "search"
     , "404 Not Found", "301 Moved Permanently", "Object moved", "302 Found", "WordPress \8250 Error"
     , "Login \187 Qstream", "Kaggle Blog - Medium", "403 Forbidden", "500 Internal Server Error", "BBC NEWS Science &amp; Environment", "Welcome!", "Flashback Forum", "Best search engine for True crime stories"
     , "Research", "niplav", "SL4: By Thread", "Moved Temporarily", "Redirecting\8230", "Torch"
     , "crazymeds.us", "Site Not Found - Carnegie Mellon University School of Computer Science", "Documented Moved", "Notion \8211 The all-in-one workspace for your notes, tasks, wikis and databases."
     , "TikTok - Make Your Day", "Just a moment...", "Amazon.com", "303 See Other", "Sorry! Something went wrong!"
     , "nytimes.com", "Error 404 (Not Found)!!1", "Quanta Magazine\nQuanta Homepage\nSaved articles\nLogin\nSearch\nComment\nSave Article\nFacebook\nTwitter\nCopy link\nEmail\nPocket\nReddit\nYcombinator\nFlipboard\nComment\nSave Article\nComment\nSave Article\nFacebook\nTwitter\nCopy link\nEmail\nPocket\nReddit\nYcombinator\nFlipboard\nFacebook\nTwitter\nCopy link\nEmail\nPocket\nReddit\nYcombinator\nFlipboard\nQuanta Homepage\nFacebook\nTwitter\nYoutube\nInstagram", "Page not found", "Dropbox - 404", "Table"
     , "Figure", "Page not found - Galois, Inc.\nLinkedIn icon\nYouTube icon", "Hacker News", "Dropbox - File Deleted - Simplify your life", "Moved Permanently"
     , "wsj.com", "Attention Required!", "Redirecting...", "Page Not Found", "WebCite query result"
     , "Opinion", "Google Colab", "Facebook", "The Evangelion Otaku Page :::", "Google Scholar", "Ponies at Dawn"
     , "Not Found", "301 Moved", "Frontiers", "404 Page not found", "404 Not Found\n \8211 MEM TEA", "reuters.com"
     , "Home", "\38626\28149\28149\21305: \25160", "fastcompany.com", "dnstats.net", "Wikipedia Statistics", "Wayback Machine\nInternet Archive logo\nDonate icon\nSearch icon\nSearch icon\nUpload icon\nUser icon\nWeb icon\nTexts icon\nVideo icon\nAudio icon\nSoftware icon\nImages icon\nDonate icon\nEllipses icon\nHamburger icon\nSearch icon\nDonate icon"
     , "Access to this page has been denied", "404 - Page not found", "Internet Archive: Digital Library of Free &amp; Borrowable Books, Movies, Music &amp; Wayback Machine", "Document Moved"
     , "404 Error", "Site not found", "Metropolitan Opera", "Imgur: The magic of the Internet", "Add-ons for Firefox (en-US)", "trees are harlequins, words are harlequins", "The page was not found!", "Page not found \183 GitHub", "Error", "Calvin &amp; Muad'Dib: Photo", "404 - File or directory not found."
     , "Slate Star Scratchpad", "Not found.", "Internet Archive: Error\nInternet Archive logo\nDonate icon\nSearch icon\nSearch icon\nUpload icon\nUser icon\nWeb icon\nTexts icon\nVideo icon\nAudio icon\nSoftware icon\nImages icon\nDonate icon\nEllipses icon\nHamburger icon\nSearch icon\nDonate icon", "File not found", "Central Intelligence Agency\nCentral Intelligence Agency\nInstagram\nFacebook\nTwitter\nLinkedIn\nYouTube\nFlickr\nTelegram", "Amazon Alexa"
     , "About", "404 Not Found - Harney &amp; Sons Fine Teas", "\227\131\139\227\130\179\227\131\139\227\130\179", "e-codices \8211\160Virtual Manuscript Library of Switzerland", "Weights &amp; Biases"
     , "Untitled Document", "Tor Project", "Redirect", "Private Site\nWordPress.com", "Google Code Archive - Long-term storage for Google Code Project Hosting."
     , "Error - LONGECITY", "Document Has Moved", "Amazon.co.jp", "307 Temporary Redirect", "308 Permanent Redirect", "\8206Connecting to App\160Store", "psmag.com"
     , "openSNP", "You\8217ve reached a 404 page.\nActivating this button will toggle the display of additional content\nSlate homepage\nSubmit search\nEnter query\nActivating this button will toggle the display of additional content\nOpen menu\nClose menu\nActivating this button will toggle the display of additional content\nSlate on Instagram\nSlate on Twitter\nSlate on Facebook\nSlate on YouTube\nSlate homepage\n*\nSlate on Instagram\nSlate on Twitter\nSlate on Facebook\nSlate on YouTube\nThe Slate Group logo", "The Pirate Bay - The galaxy's most resilient bittorrent site", "Page not found - Sex Games Online\nPage not found - Sex Games Online", "Page Not Found (404)", "Object not found!"
     , "LessWrong", "Hacker News Search powered by Algolia", "EvaGeeks.org Forum - an Evangelion Fan Community - Login", "EvaGeeks.org Forum - an Evangelion Fan Community - Information"
     , "A Lesson Is Learned But The Damage Is Irreversible", "404", "thestreet.com", "moved to tonkatsu-slice", "jackkinsella.ie"
     , "Untitled", "Unable to Serve This Request", "Table of Contents", "Sam Harris", "Redirecting to Google Groups", "Publications"
     , "Page Not Found - Straight Dope Message Board", "Page Not Found - Quantified Self Forum", "Page Not Found\nLock", "Music", "Marak.com", "Manifold"
     , "Library Genesis \8226 scientific articles", "JSTOR: Access Check", "Home - Nyaa.se Torrents Proxy", "Felsida 404", "FeepingCreature", "FAQ"
     , "Evalegend.com", "Error Page", "Edge.org", "DeviantArt: 404", "DSpace", "ClinicalTrials.gov"
     , "Browse :: Nyaa", "Blog not found", "Are.na", "Arbital", "Access to this page has been denied.", "APA PsycNet"
     , "4chan archive", "404: Page Not Found", "404 / Page Not Found", "404 - Category not found", "401 Authorization Required", "302 Moved", "502 Bad Gateway", "504 Gateway Time-out"
     , "www.milib.co.uk", "worlds of DAVID BRIN", "vanishing_\227\129\151\227\129\152\227\129\191", "study.com", "simon's darcsden", "siderea"
     , "seatsmart.com", "rs.io", "ribbonfarm", "reddragdiva"
     , "rachelbythebay", "prymd.com", "podcast.ai", "pied", "paizo.com - Community / Paizo Blog", "miller-mccune.com"
     , "megastep", "marketwatch.com", "is No Longer Here", "index", "gigamonkeys", "forre.st"
     , "flume.com.br", "agingfree.org", "articles", "Vercel Security Checkpoint", "CONTENTdm"
     , "Not Found - Albion - Webflow HTML website template", "Siberian Times", "Toshi Omagari"
     , "404 - Isomorphic Labs", "Page not found - PsyPost - Psychology News"
     , "Notion – The all-in-one workspace for your notes, tasks, wikis, and databases."
     , "Computer Vision and Learning LMU Munich", "Ryan Moulton's Articles"
     , "Page not found : Stanford University", "GoLocalPDX", "Bookslut"
     , "&#13;\n\tMedicine &amp; Science in Sports &amp; Exercise&#13;", "Patlabor Wiki"]

-- testing: unique keys
stringReplace :: [(String,String)]
stringReplace = [("  ", " ")
                , ("Â°", "°")
                , ("Â ", " ")
                , (" â\200\224 ", "—")
                , ("\128\200\231", "’")]

-- testing: unique list
stringDelete :: [String]
stringDelete = [" - The Public Domain Review"
            , "â\200\224dConstruct Conference Talk"
            , " - Long Bets"
            , "Sequential Tart: Article - "
            , " - IEEE Spectrum"
            , " - The Willits News"
            , "spotify-podcast-badge-wht-blk-165x40"
            , "The Technium: "
            , " « 33 Bits of Entropy"
            , "\nInternet Archive logo\nDonate icon\nSearch icon\nSearch icon\nUpload icon\nUser icon\nWeb icon\nTexts icon\nVideo icon\nAudio icon\nSoftware icon\nImages icon\nDonate icon\nEllipses icon\nHamburger icon\nSearch icon\nDonate icon"
            , " – The Berkeley Artificial Intelligence Research Blog"
            , " \128\200\223 Jay Alammar \128\200\223 Visualizing machine learning one concept at a time."
            , "Abandoned Footnotes: "
            , " - ScienceDirect\nScienceDirect"
            , " Journal of Heredity"
            , "\nStripe logo\nOpen mobile navigation\nStripe logo\nClose mobile navigation\nPayments\nCheckout\nElements\nRadar\nConnect\nBilling\nInvoicing\nTerminal\nIdentity\nClimate\nBilling\nInvoicing\nTax\nRevenue Recognition\nSigma\nAtlas\nConnect\nCapital\nIssuing\nTreasury\nPayments\nCheckout\nElements\nRadar\nConnect\nBilling\nInvoicing\nTerminal\nIdentity\nClimate\nBilling\nInvoicing\nTax\nRevenue Recognition\nSigma\nAtlas\nConnect\nCapital\nIssuing\nTreasury\nStripe logo"
            , " - TODAY People - TODAY.com"
            , "Erowid Online Books : "
            , "The Splintered Mind: "
            , "Github - "
            , "GitHub - "
            , "*Reflective Disequilibrium*: "
            , " - The New York Times"
            , " |"
            , " - YouTube"
            , "—Bulletin of the Atomic Scientists"
            , " MIT News"
            , " \\\\ Anthropic"
            , " – Brendan Eich"
            , "—ACM Queue"
            , " American Political Science Review"
            , " @ Things Of Interest"
            , " - LessWrong", "A Neighborhood of Infinity: ", " by Jason Scott", " - <antirez>"
            , " - Nick's Blog", " - &lt;antirez&gt;", " - Dwarf Fortress Wiki", " \8211 Armed and Dangerous"
            , "Details Magazine: ", "(urth) ", " - Wishful Coding", "The Codeless Code:"
            , "The Virtuosi: ", "Tom Waits - ", " \9733 The Scintillating But Ultimately Untrue Thought", " (Aaron Swartz: The Weblog)"
            , " (Aaron Swartz's Raw Thought)", " - Inquiries Journal", "Locus Online: ", "Loper OS \187 "
            , "Mike On Ads  \187 Blog Archive   \187 ", " // Hayao Miyazaki Web", " - GhibliWiki", "\8212The Intercept"
            , " American Political Science Review", "zlkj.in - ", " : zhanpei fang", "zenpundit.com  \187 Blog Archive   \187 "
            , "American Express\nApple Pay\nDiners Club\nDiscover\nMeta Pay\nGoogle Pay\nMastercard\nPayPal\nShop Pay\nVenmo\nVisa", " \8211 You Are Not So Smart", " - XTools", "xkcd: "
            , " \8211 xcorr: AI &amp; neuro", " \226\128\148 LessWrong", " : Free Download, Borrow, and Streaming : Internet Archive\nInternet Archive logo\nDonate icon\nSearch icon\nSearch icon\nUpload icon\nUser icon\nWeb icon\nTexts icon\nVideo icon\nAudio icon\nSoftware icon\nImages icon\nDonate icon\nEllipses icon\nHamburger icon\nSearch icon\nDonate icon", " - 80,000 Hours"
            , " - EvaGeeks.org Forum - an Evangelion Fan Community", " - MathOverflow", " - Cross Validated", " - Wikisource, the free online library"
            , " - PMC", " - EvaWiki - An Evangelion Wiki - EvaGeeks.org", " -- Debian Quality Assurance", " - Freakonomics"
            , " - Marginal REVOLUTION", " BMC Public Health", " - Mathematics Stack Exchange", " - Google Groups"
            , " - Stack Overflow", " - MyAnimeList.net", "    [abc wiki]", "UK Anime Network - "
            , " - Microsoft Research\nYour Privacy Choices Opt-Out Icon\nYour Privacy Choices Opt-Out Icon", " -- New York Magazine - Nymag\nSearch\nClose\nSearch\nClose", "The Project Gutenberg eBook of ", "The Project Gutenberg EBook of "
            , " - Dresden Codak", " - Google Drive", " \226\128\148 EA Forum", "Saturday Morning Breakfast Cereal - "
            , " - Bitcoin Wiki", "PredictionBook: ", " - Wikipedia", " - Google Books"
            , " - Goodreads News &amp; Interviews", " - Open The Magazine", " (Stanford Encyclopedia of Philosophy)", " - HaskellWiki"
            , "AnimeSuki Forum - View Single Post -  ", "&#13;\n      The Project Gutenberg eBook of", " - DEV Community\nNavigation menu\nSearch\nSearch\nSearch\nClose\nMore...\nCopy link\nEnter fullscreen mode\nExit fullscreen mode\nEnter fullscreen mode\nExit fullscreen mode\nEnter fullscreen mode\nExit fullscreen mode\nEnter fullscreen mode\nExit fullscreen mode\nEnter fullscreen mode\nExit fullscreen mode\nEnter fullscreen mode\nExit fullscreen mode\nEnter fullscreen mode\nExit fullscreen mode\nEnter fullscreen mode\nExit fullscreen mode\nEnter fullscreen mode\nExit fullscreen mode\nEnter fullscreen mode\nExit fullscreen mode\nEnter fullscreen mode\nExit fullscreen mode\nEnter fullscreen mode\nExit fullscreen mode\nEnter fullscreen mode\nExit fullscreen mode\nCollapse\nExpand\nDropdown menu\nLike comment: \nLike comment: \nComment button\nCollapse\nExpand\nDropdown menu\nLike comment: \nLike comment: \nComment button\nCollapse\nExpand\nDropdown menu\nLike comment: \nLike comment: \nComment button\nCollapse\nExpand\nDropdown menu\nLike comment: \nLike comment: \nComment button\nCollapse\nExpand\nDropdown menu\nLike comment: \nLike comment: \nComment button\nCollapse\nExpand\nDropdown menu\nLike comment: \nLike comment: \nComment button\nCollapse\nExpand\nDropdown menu\nLike comment: \nLike comment: \nComment button", " - \8234Google Scholar\8236"
            , "\8221 \8211 Sankaku Complex", " - PMC\nTwitter\nFacebook\nLinkedIn\nGitHub\nSM-Twitter\nSM-Facebook\nSM-Youtube", " \8211 Ex Urbe", " \8211 Ultan's Library"
            , " \8211 Retraction Watch", "\nVICE\nVICE", " - The Washington Post", "  Science"
            , " / Habr\nHabr\nSearch\nWrite a publication\nSettings\nPull to refresh\nReading time\nViews\nTotal votes 54: \226\134\145\&53 and \226\134\147\&1\nAdd to bookmarks\nComments\nSend message\nComments\nFacebook\nTwitter\nTelegram", " \8211 Sydsvenskan\nSydsvenskan\nSydsvenskan\nSt\228ng\nSt\228ng\nTill toppen av sidan\nSydsvenskan\nFacebook\nTwitter\nInstagram", " The Digital Antiquarian", " -\n\nsourcehut git"
            , " - Hoogle", " - User Experience Stack Exchange", " - Wiktionary, the free dictionary", " PNAS Nexus"
            , " on DeviantArt", "steve yegge - ", "statistics - ", " - Google Search"
            , " :: hub.darcs.net", " - Everything2.com", " - Google Drive", "apfelmus - "
            , "ag.algebraic geometry - ", " - Wolfram", " - dbSNP - NCBI\nTwitter\nFacebook\nLinkedIn\nGitHub\nTwitter\nSM-Facebook\nSM-Youtube", " - Theoretical Computer Science Stack Exchange"
            , " - Marketoonist", " - Vocaloid Database", " -- joshua schachter's blog", "nt.number theory - "
            , " - Super User", " International Journal of Epidemiology", "mscroggs.co.uk Blog: ", " - AniDB"
            , " - Linux Manuals (1)", " - by benedict - bene dictio", "    [hashcat wiki]", " - IndieWeb"
            , " - ArchWiki", "\nFork me on GitHub", "lcamtuf's old blog: ", " - Academia Stack Exchange"
            , "jwz: ", " @ GitHub", "ignore the code: ", " - The Verge\nThe Verge\nThe Verge\nExpand\nThe Verge\nExpand\nPrevious\nNext\nPrevious\nNext\nPrevious\nNext\nPrevious\nNext\nComments\nThe Verge"
            , " - TeX - LaTeX Stack Exchange", "floatingsheep: ", " - Code Golf Stack Exchange"
            , "Nadia Asparouhova ", "The Universe of Discourse :"
            , "—a Hugging Face Space by HuggingFaceFW", " – Embedded in Academia"
            , "Swiss National Museum—Swiss history blog"]
