(*
"Local install script"
written by Ed Babcock
greenyouse@gmail.com

v1.0.4 June 9 2012

This file is part of Moirai Web Builder.

Moirai Web Builder is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

Moirai Web Builder is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with Moirai Web Builder.  If not, see <http://www.gnu.org/licenses/>.
*)(*
This script will automate all three parts of the web building process for either movies or TV shows.  First it deletes old files in a directory.  Then folders are created.  Finally, the HTML5 pages will be generated using parallel processing for the code writing (speeds everything up quite a bit).  Don't forget, you can delete the "choose folder" at the top and code in your own alias (try making multiple copies of this sheet for each alias) so your computer can automate this script on a cron.  Enjoy!

Note: Needs "_" in show, season, and episode html page titles instead of " " (spaces will break a url)
*)set theNumbers to {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9"}set numberLabel to {"-"}set theSpaces to {" "}set theColons to {":"}set theDashes to {"_"} --helpful for displaying names in html5 list generationset theNormalCharacters to {"/"} --change ":" to "/" for html5 codingbeeptell application "Finder"	set htmlDeletion to (display dialog "Are you sure you want to delete the html files?" buttons {"yes", "no"})	if button returned of htmlDeletion is "yes" then		try			set targetFolder to choose folder			set allFiles to every item in entire contents of targetFolder			repeat with aFile in allFiles				if name extension of aFile is "html" then					delete aFile				end if			end repeat		end try	else		if button returned of htmlDeletion is "no" then		end if	end if	beep	set folderDeletion to display dialog "Clear folders too?" buttons {"yes", "no"}	if button returned of folderDeletion is "yes" then		try			delete every folder in entire contents of targetFolder		end try	else		if button returned of folderDeletion is "no" then		end if	end ifend tell --end script 1, begin script 2activatebeepdisplay dialog "Where are the videos?"set vidDirectory to choose folderbeepset preSubQuery to display dialog "Will you use subtitles?" buttons {"Yes", "No"}if button returned of preSubQuery is "Yes" then	set extensionList to {".srt", ".txt", ".mks", ".vtt"}	set subTypeQuery to (choose from list extensionList with prompt "What subtitle file type will you use?" without multiple selections allowed) as text	set subtitleQuery to {"ab -- Abkhazian.", "aa -- Afar.", "af -- Afrikaans.", "sq -- Albanian.", "am -- Amharic.", "ar -- Arabic.", "an -- Aragonese.", "hy -- Armenian.", "as -- Assamese.", "ay -- Aymara.", "az -- Azerbaijani.", "ba -- Bashkir.", "eu -- Basque.", "bn -- Bengali.", "dz -- Bhutani.", "bh -- Bihari.", "bi -- Bislama.", "br -- Breton.", "bg -- Bulgarian.", "my -- Burmese.", "be -- Byelorussian.", "km -- Cambodian.", "ca -- Catalan.", "zh -- Chinese.", "zh -- Chinese.", "co -- Corsican.", "hr -- Croatian.", "cs -- Czech.", "da -- Danish.", "nl -- Dutch.", "en -- English.", "eo -- Esperanto.", "et -- Estonian.", "fo -- Faeroese.", "fa -- Farsi.", "fj -- Fiji.", "fi -- Finnish.", "fr -- French.", "fy -- Frisian.", "gl -- Galician.", "gd -- Gaelic.", "gv -- Gaelic.", "ka -- Georgian.", "de -- German.", "el -- Greek.", "kl -- Greenlandic.", "gn -- Guarani.", "gu -- Gujarati.", "ht -- Haitian Creole.", "ha -- Hausa.", "he -- Hebrew.", "hi -- Hindi.", "hu -- Hungarian.", "is -- Icelandic.", "io -- Ido.", "id -- Indonesian.", "ia -- Interlingua.", "ie -- Interlingue.", "iu -- Inuktitut.", "ik -- Inupiak.", "ga -- Irish.", "it -- Italian.", "ja -- Japanese.", "jv -- Javanese.", "kn -- Kannada.", "ks -- Kashmiri.", "kk -- Kazakh.", "rw -- Kinyarwanda.", "ky -- Kirghiz.", "rn -- Kirundi.", "ko -- Korean.", "ku -- Kurdish.", "lo -- Laothian.", "la -- Latin.", "lv -- Latvian.", "li -- Limburgish.", "ln -- Lingala.", "lt -- Lithuanian.", "mk -- Macedonian.", "mg -- Malagasy.", "ms -- Malay.", "ml -- Malayalam.", "mt -- Maltese.", "mi -- Maori.", "mr -- Marathi.", "mo -- Moldavian.", "mn -- Mongolian.", "na -- Nauru.", "ne -- Nepali.", "no -- Norwegian.", "oc -- Occitan.", "or -- Oriya.", "om -- Oromo.", "ps -- Pashto.", "pl -- Polish.", "pt -- Portuguese.", "pa -- Punjabi.", "qu -- Quechua.", "rm -- Rhaeto-Romance.", "ro -- Romanian.", "ru -- Russian.", "sm -- Samoan.", "sg -- Sangro.", "sa -- Sanskrit.", "sr -- Serbian.", "sh -- Serbo-Croatian.", "st -- Sesotho.", "tn -- Setswana.", "sn -- Shona.", "ii -- Sichuan Yi.", "sd -- Sindhi.", "si -- Sinhalese.", "ss -- Siswati.", "sk -- Slovak.", "sl -- Slovenian.", "so -- Somali.", "es -- Spanish.", "su -- Sundanese.", "sw -- Swahili.", "sv -- Swedish.", "tl -- Tagalog.", "tg -- Tajik.", "ta -- Tamil.", "tt -- Tatar.", "te -- Telugu.", "th -- Thai.", "bo -- Tibetan.", "ti -- Tigrinya.", "to -- Tonga.", "ts -- Tsonga.", "tr -- Turkish.", "tk -- Turkmen.", "tw -- Twi.", "ug -- Uighur.", "uk -- Ukrainian.", "ur -- Urdu.", "uz -- Uzbek.", "vi -- Vietnamese.", "vo -- Volapük.", "wa -- Wallon.", "cy -- Welsh.", "wo -- Wolof.", "xh -- Xhosa.", "yi -- Yiddish.", "yo -- Yoruba.", "zu -- Zulu."}	set menuChoice to (choose from list subtitleQuery with prompt "Which subtitle langauges will you use? (⌘ + click)" with multiple selections allowed) as textend ifbeepdisplay dialog "Where to build?"set dumpDirectory to choose foldertell application "Finder"	set mediaChoice to display dialog "Is this a TV Show or Movie?" buttons {"TV Show", "Movie"}	if button returned of mediaChoice is "TV Show" then		set showList to folders in vidDirectory --changes title of each video file for later step		repeat with aShow in showList			set showName to name of aShow as text			set episodeList to every file in aShow			repeat with anEpisode in episodeList --below changes the name				set semiEpisodeName to name of anEpisode as text				if semiEpisodeName does not end with ".nfo" then --Keeps .nfo files in their place					set theExtension to "." & name extension of anEpisode					set episodeName to text 1 thru ((offset of theExtension in semiEpisodeName) - 1) ¬						of semiEpisodeName					-- This part will build the folders to hold the webpages :D										set AppleScript's text item delimiters to "."					set azMenuName to "A-ZMenu"					set letterName to first character of showName as text					set seasonName to text item 2 of episodeName as text					try						set oldLetter to letterName --test for number						set letterName to number						set numTest to true						set letterName to oldLetter					end try					if numTest is true then						set letterName to my numberCorrection(letterName) --convert number to "Num"					end if					if (exists folder (azMenuName as string) in dumpDirectory) then						set alphaFolder to folder named azMenuName in dumpDirectory					else						set alphaFolder to make new folder at dumpDirectory with properties {name:azMenuName}					end if					if (exists folder (letterName as string) in alphaFolder) then						set letterFolder to folder named letterName in alphaFolder					else						set letterFolder to make new folder at alphaFolder with properties {name:letterName}					end if					if (exists folder (showName as string) in letterFolder) then						set showFolder to folder named showName in letterFolder					else						set showFolder to make new folder at letterFolder with properties {name:showName}					end if					if (exists folder (seasonName as string) in showFolder) then						set seasonFolder to folder named seasonName in showFolder					else						set seasonFolder to make new folder at showFolder with properties {name:seasonName}					end if					try --done to prevent duplicates from being entered						if (exists file (episodeName) in seasonFolder) then						else							move anEpisode to seasonFolder						end if					end try				end if			end repeat		end repeat			else		if button returned of mediaChoice is "Movie" then			set azMenuName to "A-ZMenu"			set allVids to every file in entire contents of vidDirectory --builds directory based on video title			repeat with aVid in allVids				set aLabel to name of aVid as text				if aLabel does not end with ".nfo" then --Keeps .nfo files in their place					set letterTitle to character 1 of aLabel					set showTitle to text 1 thru ((offset of "." in aLabel) - 1) of aLabel					set showTitle to my replace_chars(showTitle, " ", "_")					try						set oldLetter to letterTitle --test for number						set letterTitle to number						set numTest to true						set letterTitle to oldLetter					end try					if numTest is true then						set letterTitle to my numberCorrection(letterTitle) --convert number to "Num"					end if					if (exists folder (azMenuName as string) in dumpDirectory) then						set alphaFolder to folder named azMenuName in dumpDirectory					else						set alphaFolder to make new folder at dumpDirectory with properties {name:azMenuName}					end if					if (exists folder (letterTitle as string) in alphaFolder) then						set letterFolder to folder named letterTitle in alphaFolder					else						make new folder at alphaFolder with properties {name:letterTitle}						set letterFolder to folder named letterTitle in alphaFolder					end if					if (exists folder (showTitle as string) in letterFolder) then						set showFolder to folder named showTitle in letterFolder					else						make new folder at letterFolder with properties {name:showTitle}						set showFolder to folder named showTitle in letterFolder					end if					try --done to prevent duplicates from being entered						move aVid to showFolder					end try				end if			end repeat		end if	end ifend tellset AppleScript's text item delimiters to {""}--end script 2, begin script 3tell application "Finder" --first part selects where to store the original files	if button returned of mediaChoice is "TV Show" then		set createdLetters to {} -- used for determining letters at the end		set tvName to name of dumpDirectory		set azList to folders in dumpDirectory --NEEDED FOR HEIRARCHY DON'T ERASE!!!		repeat with azMenu in azList			set azMenuName to name of azMenu			set letterList to folders in azMenu			repeat with aLetter in letterList				set letterName to name of aLetter				copy letterName to end of createdLetters --used for letters at the end				set showList to folders in aLetter				repeat with aShow in showList					set showName to name of aShow					set seasonList to folders in aShow					repeat with aSeason in seasonList						set seasonName to name of aSeason						set episodeList to files in aSeason						repeat with anEpisode in episodeList							if name extension of anEpisode ≠ "html" then --avoid html files								set AppleScript's text item delimiters to "."								set episodeName to name of anEpisode								set origEpisodeName to episodeName --backup of the name!								set episodeName to my replace_chars(episodeName, " ", "_")								set episodeExtension to name extension of anEpisode								set actualEpisodeTitle to text 1 thru ((offset of episodeExtension ¬									in origEpisodeName) - 1) of origEpisodeName								set episodeTitle to text 1 thru ((offset of episodeExtension in episodeName) - 1) of episodeName								set docName to episodeTitle & "html"								if name extension of anEpisode ≠ "html" then --move anEpisode to vidDirectory and rebuild filesystem									if {exists folder (showName) in vidDirectory} then										set altShow to folder (showName) in vidDirectory										move anEpisode to altShow --move to Season in vidDirectory										set currentLoc to altShow as text									else										try											set altShow to make new folder at vidDirectory with properties {name:showName}										end try										move anEpisode to altShow										set currentLoc to altShow as text									end if								end if							end if							set parentFol to folder of dumpDirectory --used as a delimiter! (mwahahaha)							set parentName to name of parentFol							set pathName to currentLoc as text							set pathName to my replace_chars(pathName, ":", "/") --change ":" to "_"							set pathName to my replace_chars(pathName, " ", "_") --change " " to "_"							set AppleScript's text item delimiters to parentName --this all points							set almostLoc to text item 2 of pathName --to the file for the HTML							set AppleScript's text item delimiters to origEpisodeName --coding							set nearlyLoc to text item 1 of almostLoc & origEpisodeName							set fileLoc to text ((offset of ":" in nearlyLoc) + 1) thru -1 of nearlyLoc							set AppleScript's text item delimiters to {""}							try --prevents duplicates from being written----------------------------...d888								make new file at aSeason with properties {name:docName} --d8888							end try --													888							if {exists file (docName) in aSeason} then --						888								set dFile to file (docName) in aSeason --						888								set episodeFile to dFile as alias --							888								--Code for episode html text file!---						   	888								--you can modify this for your own coding needs of course        8888888								if button returned of preSubQuery is "Yes" then									set subtitleHTML to {}									set almostSubLoc to "../../../../../videos/subtitles/" & actualEpisodeTitle									set oldTID to AppleScript's text item delimiters									set AppleScript's text item delimiters to "."									set allChoices to every text item of menuChoice									repeat with anItem in allChoices										if menuChoice contains anItem then											set AppleScript's text item delimiters to oldTID											set oldTID to AppleScript's text item delimiters											set AppleScript's text item delimiters to " -- "											set theHeading to first text item of anItem											set nameLang to second text item of anItem											set AppleScript's text item delimiters to oldTID											set oldTID to AppleScript's text item delimiters											set AppleScript's text item delimiters to "."											set subLoc to almostSubLoc & nameLang & subTypeQuery											set totalList to "<track kind='subtitles' src='" & subLoc & "' srclang='" & theHeading & "' label='" & nameLang ¬												& "' />" & return											copy totalList to end of subtitleHTML										end if									end repeat									set episodeText to "<!DOCTYPE html>
<html>
    <head>
        <title>" & episodeName & "</title>
        <link href='http://vjs.zencdn.net/c/video-js.css' rel='stylesheet'>
        <script src='http://vjs.zencdn.net/c/video.js'></script>
        <style>
            body {
                background-color: #000000
            }
            .button {
          visibility:visible;
          opacity:0;
          -webkit-transition:visibility 0s linear 0.5s,opacity 0.5s linear;
          -moz-transition:visibility 0s linear 0.5s,opacity 0.5s linear;
          -ms-transition:visibility 0s linear 0.5s,opacity 0.5s linear;
          -o-transition:visibility 0s linear 0.5s,opacity 0.5s linear;
          transition:visibility 0s linear 0.5s,opacity 0.5s linear;
          position:absolute;
          top:10px;
          left:5px;
      }
      .button:hover {
          visibility:visible;
          opacity:1;
          -webkit-transition-delay:0s;
          -moz-transition-delay:0s;
          -ms-transition-delay:0s;
          -o-transition-delay:0s;
          transition-delay:0s;
      }
        </style>
    </head>
    <body>
        <video id='example_video_1' class='video-js vjs-default-skin'
      controls preload='auto' width='1080' height='720' autoplay
      data-setup='{\"example_option\":true}'>
      <source src='../../../../.." & fileLoc & "' type='video/mp4'/>
      <source src='../../../../.." & fileLoc & "' type='video/ogg'/>
      <source src='../../../../.." & fileLoc & "' type='video/webm' />
      " & subtitleHTML & "
          </video>
          <button id='fullscreenvid' class='button'>Fullscreen video</button>
          <script type='text/javascript'>
              (function(window, document){
			var $ = function(selector,context){return(context||document).querySelector(selector)};

			var video  = $(\"video\"),
				iframe = $(\"iframe\"),
				domPrefixes = 'Webkit Moz O ms Khtml'.split(' ');

			var fullscreen = function(elem) {
				var prefix;
				// Mozilla and webkit intialise fullscreen slightly differently
				for ( var i = -1, len = domPrefixes.length; ++i < len; ) {
		          prefix = domPrefixes[i].toLowerCase();

				  if ( elem[prefix + 'EnterFullScreen'] ) {
		            // Webkit uses EnterFullScreen for video
					return prefix + 'EnterFullScreen';
					break;
		          } else if( elem[prefix + 'RequestFullScreen'] ) {
					// Mozilla uses RequestFullScreen for all elements and webkit uses it for non video elements
					return prefix + 'RequestFullScreen';
					break;
				  }
		        }

				return false;
			};

			// Will return fullscreen method as a string if supported e.g. 'mozRequestFullScreen' || false;
			var fullscreenvideo = fullscreen(document.createElement(\"video\"));

			// Webkit uses 'requestFullScreen' for non video elements
			var fullscreenother = fullscreen(document.createElement(\"iframe\"));

			if(!fullscreen) {
				alert(\"Fullscreen won't work, please make sure you're using a browser that supports it and you have enabled the feature\");
				return;
			}

			// Should add prefixed events for potential ms/o or unprefixed support too
			video.addEventListener(\"webkitfullscreenchange\",function(){
				console.log(document.webkitIsFullScreen);
			}, false);
			video.addEventListener(\"mozfullscreenchange\",function(){
				console.log(document.mozFullScreen);
			}, false);

			$(\"#fullscreenvid\").addEventListener(\"click\", function(){
				// The test returns a string so we can easily call it on a click event
				video[fullscreenvideo]();
			}, false);
			$(\"#fullscreeniframe\").addEventListener(\"click\", function(){
				// iframe fullscreen and non video elements in webkit use request over enter
				iframe[fullscreenother]();
			}, false);
		})(this, this.document);
            </script>
      </body>
  </html>"								else									set episodeText to "<!DOCTYPE html>
<html>
    <head>
    	 <title>" & episodeName & "</title>
        <style>
             #video_background {
            top:0;
            bottom:0;
            left:0;
            right:0;
            z-index:-10;
          position:fixed;
          height:100%;
          width:100%;
          background-color:#000000
      }
      .button {
          visibility:visible;
          opacity:0;
          -webkit-transition:visibility 0s linear 0.5s,opacity 0.5s linear;
          -moz-transition:visibility 0s linear 0.5s,opacity 0.5s linear;
          -ms-transition:visibility 0s linear 0.5s,opacity 0.5s linear;
          -o-transition:visibility 0s linear 0.5s,opacity 0.5s linear;
          transition:visibility 0s linear 0.5s,opacity 0.5s linear;
          position:absolute;
          top:10px;
          left:5px;
      }
      .button:hover {
          visibility:visible;
          opacity:1;
          -webkit-transition-delay:0s;
          -moz-transition-delay:0s;
          -ms-transition-delay:0s;
          -o-transition-delay:0s;
          transition-delay:0s;
      }
  </style>
  </head>
  <body>
      <div class='fl'>
          <video id='video_background' preload='auto|metadata' height='100%'controls='controls' width='100%' autoplay>
          <source src='../../../../.." & fileLoc & "' type='video/mp4'/>
          <source src='../../../../.." & fileLoc & "' type='video/ogg'/>
          <source src='../../../../.." & fileLoc & "' type='video/webm' />
  </video>
  <button id='fullscreenvid' class='button'>Fullscreen video</button>
</div>
  <script>
      (function(window, document){
			var $ = function(selector,context){return(context||document).querySelector(selector)};

			var video  = $(\"video\"),
				iframe = $(\"iframe\"),
				domPrefixes = 'Webkit Moz O ms Khtml'.split(' ');

			var fullscreen = function(elem) {
				var prefix;
				// Mozilla and webkit intialise fullscreen slightly differently
				for ( var i = -1, len = domPrefixes.length; ++i < len; ) {
		          prefix = domPrefixes[i].toLowerCase();

				  if ( elem[prefix + 'EnterFullScreen'] ) {
		            // Webkit uses EnterFullScreen for video
					return prefix + 'EnterFullScreen';
					break;
		          } else if( elem[prefix + 'RequestFullScreen'] ) {
					// Mozilla uses RequestFullScreen for all elements and webkit uses it for non video elements
					return prefix + 'RequestFullScreen';
					break;
				  }
		        }

				return false;
			};

			// Will return fullscreen method as a string if supported e.g. 'mozRequestFullScreen' || false;
			var fullscreenvideo = fullscreen(document.createElement(\"video\"));

			// Webkit uses 'requestFullScreen' for non video elements
			var fullscreenother = fullscreen(document.createElement(\"iframe\"));

			if(!fullscreen) {
				alert(\"Fullscreen won't work, please make sure you're using a browser that supports it and you have enabled the feature\");
				return;
			}

			// Should add prefixed events for potential ms/o or unprefixed support too
			video.addEventListener(\"webkitfullscreenchange\",function(){
				console.log(document.webkitIsFullScreen);
			}, false);
			video.addEventListener(\"mozfullscreenchange\",function(){
				console.log(document.mozFullScreen);
			}, false);

			$(\"#fullscreenvid\").addEventListener(\"click\", function(){
				// The test returns a string so we can easily call it on a click event
				video[fullscreenvideo]();
			}, false);
			$(\"#fullscreeniframe\").addEventListener(\"click\", function(){
				// iframe fullscreen and non video elements in webkit use request over enter
				iframe[fullscreenother]();
			}, false);
		})(this, this.document);

    </script>
</body>
</html>"								end if								ignoring application responses									set episodeFile to my writeCode(episodeFile, episodeText)								end ignoring								----------------------------------------------------------------------.d8888b.								set AppleScript's text item delimiters to "" -----------------d88P  Y88b							end if -------------			---                        -------------                 888						end repeat -------------------------------   	-- --------               ---           .d88P						set docName to seasonName & ".html" ------		   -------------     .od888PI						set altShowName to showName as text -----------    -------------    d88PI						set altShowName to my replace_chars(altShowName, "_", " ") --888I 						set altSeasonName to seasonName as text --------------------------8888888888 						set altSeasonName to my replace_chars(altSeasonName, "_", " ")						try							make new file at aShow with properties {name:docName}						end try						if {exists file (docName) in aShow} then							set dFile to file (docName) in aShow							set episodeFile to dFile as alias							set listPart1 to "<li><a href='" --auto generate HTML lists							set listPart7 to "'>"							set listPart9 to "</a></li>"							set seasonHtmlList to {}							set allFiles to every file in aSeason							repeat with aFile in allFiles								if name extension of aFile is "html" then									set AppleScript's text item delimiters to "."									set htmlFile to actualEpisodeTitle & "html" as string									set trueEpisodeName to text item 3 of htmlFile									set htmlFile to my replace_chars(htmlFile, " ", "_")									set AppleScript's text item delimiters to ""									set trueEpisodeName to my replace_chars(trueEpisodeName, " ", "_")									set totalList to listPart1 & "../../../../TV_Shows" & "/" & azMenuName & "/" & letterName & "/" & showName & "/" & seasonName & "/" & htmlFile & listPart7 & trueEpisodeName & listPart9									copy totalList to end of seasonHtmlList								end if							end repeat							set episodeText to "<!Doctype html>
<head>
    <title>" & showName & " " & seasonName & "</title>
    <meta charset='UTF-8' />
    <style>
        body {
            margin:0;
            padding:0;
            height:100%;
            background-color:#000;
        }

        <!-- Nav menu -->
        #navigation {
            position:absolute;
            top:195px;
            left:60px;
        }
        .nav {
            list-style:none;
            width:100px;
            line-height:20px;
        }
        .nav li a {
            font-family: 'MarionRegular';
            color:#808080;
            font-size:10pt;
            text-decoration:none;
            background-color:rgba(0,0,0,.8);
        }
        .nav li a:hover {
            color:#5156CF;
        }

        <!-- Nav sub-menus -->
        div#navigation a:hover {
            color:5156CF;
        }

        .nav li .darkBtn {
            color:#3A3A3A;
        }

        <!-- Space for Nav Bar -->
        #nav_shield {
            position:absolute;
            left:0px;
            top:0px;
            width:260px;
            background-color:rgba(0,0,0,1);
        }

        <!-- Season/Episode Selection -->
        #SE_navigation {
            position:absolute;
            left:265px;
        }

        .SE_nav {
            list-style:none;
            width:500px;
            line-height:20px;
            font-size: 19px;
        }

        .SE_nav li a {
            text-decoration:none;
            display:block;
            color:#FFFFFF;
            padding:2px;
            font-size:13;
        }

        .SE_nav li a:hover {
            color:#5156CF
        }

        <!-- Headers -->
        #showTitle {
            font-size:50px;
            color:#708090;
            position:absolute;
            top:2;
            left:260px;
            height:100px;
            width:600px;
        }

        #showTitle {
            font-size:50px;
            color:#708090;
	  height:100px;
	  width:650px;
            }

            #seasonTitle {
            font-size:30px;
            color:#708090;
        }

    </style>
</head>
<body>
    <div id='nav_shield' style='width: 260px; height: 180px; display: block'>
    </div>
    <div id='navigation' style='width:260px; display: block'>
        <ul class= 'nav'>
            <li><a href='../../../../TV_Shows/A-Zmenu/" & letterName & "/" & showName & ".html'> ..</a></li>
            <li><a href='../../../../Index.html'>Home</a></li>
            <li><a href='#Files'>Files</a></li>
            <li><a href='../../../../Movies/A-Zmenu.html'>Movies</a></li>
            <li><a href='../../../../TV_Shows/A-Zmenu.html'>TV Shows</a></li>
            <li><a class='darkBtn' href='#Boomshakalaka'>word</a></li>
        </ul>
    </div>
    <!-- Main Section -->


    <div id='SE_navigation'
        style='width:260px;position:absolute;top:110px;left:265px;diplay:block'>
        <header id='showTitle' >" & altShowName & "</header>
        <header id='seasonTitle' >" & altSeasonName & "</header>
        <ul class='SE_nav'>" & ¬								seasonHtmlList & "
		</ul>
    </div>
</body>
</html>"							ignoring application responses								set episodeFile to my writeCode(episodeFile, episodeText)							end ignoring						end if					end repeat					set docName to showName & ".html"					try						make new file at aLetter with properties {name:docName}					end try					if {exists file (docName) in aLetter} then						set dFile to file (docName) in aLetter						set episodeFile to dFile as alias --							.d8888b.						set listPart1 to "<li><a href='" --auto generate HTML lists-------d88P  Y88b						set listPart6 to "'>" --											  .d88P						set listPart8 to "</a></li>" --									8888I						set showHtmlList to {} --										  IY8b.						set allFiles to every file in aShow --							888    888						repeat with aFile in allFiles --								Y88b  d88P							if name extension of aFile is "html" then ---				 IY8888PI								set htmlFile to name of aFile as text								set trueSeasonName to text 1 thru ((offset of "." in htmlFile) - 1) of htmlFile								set trueSeasonName to my replace_chars(trueSeasonName, "_", " ")								set totalList to listPart1 & "../../../TV_Shows" & "/" & azMenuName & "/" & letterName & "/" & showName & "/" & htmlFile & listPart6 & trueSeasonName & listPart8								copy totalList to end of showHtmlList							end if						end repeat						set episodeText to "<!Doctype html>
<head>
    <title>" & showName & "</title>
    <meta charset='UTF-8' />
    <style>
	body {
            margin:0;
            padding:0;
            height:100%;
            background-color:#000;
        }

        <!-- Nav menu -->
        #navigation {
            position:absolute;
            top:195px;
            left:60px;
        }
        .nav {
            list-style:none;
            width:100px;
            line-height:20px;
        }
        .nav li a {
            font-family: 'MarionRegular';
            color:#808080;
            font-size:10pt;
            text-decoration:none;
            background-color:rgba(0,0,0,.8);
        }
        .nav li a:hover {
            color:#5156CF;
        }

        <!-- Nav sub-menus -->
        div#navigation a:hover {
            color:5156CF;
        }

        .nav li .darkBtn {
            color:#3A3A3A;
        }

        <!-- Space for Nav Bar -->
        #nav_shield {
            position:absolute;
            left:0px;
            top:0px;
            width:260px;
            background-color:rgba(0,0,0,1);
        }

        <!-- Season/Episode Selection -->
        #SE_navigation {
            position:absolute;
            left:265px;
        }

        .SE_nav {
            list-style:none;
            width:500px;
            line-height:20px;
            font-size:19px;
        }

        .SE_nav li a {
            text-decoration:none;
            display:block;
            color:#FFFFFF;
            padding:2px;
            font-size:13;
        }

        .SE_nav li a:hover {
            color:#5156CF
        }

        <!-- Headers -->
        #showTitle {
            font-size:50px;
            color:#708090;
            height:100px;
            width:600px;
        }

    </style>
</head>
<body>
    <div id='nav_shield' style='width: 260px; height: 180px; display: block'>
    </div>
    <div id='navigation' style='width:260px; display: block'>
        <ul class= 'nav'>
            <li><a href='../../../TV_Shows/A-Zmenu/" & letterName & ".html'> ..</a></li>
            <li><a href='../../../Index.html'>Home</a></li>
            <li><a href='#Files'>Files</a></li>
            <li><a href='../../../Movies/A-Zmenu.html'>Movies</a></li>
            <li><a href='../../../TV_Shows/A-Zmenu.html'>TV Shows</a></li>
            <li><a class='darkBtn' href='#Boomshakalaka'>word</a></li>
        </ul>
    </div>
    <!-- Main Section -->
    <div id='SE_navigation' style='width:260px;position:absolute;top:110px;left:265px;' >
        <header id='showTitle' style='font-size:50px;
            color:#708090;position:absolute;top:2;left:20px;height:100px;width:600px'>" & altShowName & "</header>
        <ul class='SE_nav' style='position:absolute;top:125px;'>" & ¬							showHtmlList & "
		</ul>
    </div>
</body>
</html>"						ignoring application responses							set episodeFile to my writeCode(episodeFile, episodeText)						end ignoring					end if				end repeat				set docName to letterName & ".html"				try					make new file at (azMenu) with properties {name:docName}				end try				if {exists file (docName) in azMenu} then					set dFile to file (docName) in azMenu --				d8888					set episodeFile to dFile as alias ----------------------------d8P888  					set listPart1 to "<li><a href='" --------------------------d8P 888					set listPart6 to "'>" ---------------------------------------d8P  888					set listPart8 to "</a></li>" ----------------------------d88   888 					set letterHtmlList to {} ---------------------------------8888888888					set allFiles to every file in aLetter ------------------------     888 					repeat with aFile in allFiles ------------------------------------888						if name extension of aFile is "html" then							set htmlFile to name of aFile as text							set trueShowName to text 1 thru ((offset of "." in htmlFile) - 1) of htmlFile							set trueShowName to my replace_chars(trueShowName, "_", " ")							set totalList to listPart1 & "../../TV_Shows" & "/" & azMenuName & "/" & letterName & "/" & htmlFile & listPart6 & trueShowName & listPart8							copy totalList to end of letterHtmlList						end if					end repeat					if letterName as string is "-" then						set letterName to "#" as string					end if					set episodeText to "<!Doctype html>
<head>
    <title>" & letterName & "</title>
    <meta charset='UTF-8' />
    <style>
        body {
            margin:0;
            padding:0;
            height:100%;
            background-color:#000;
        }

        <!-- Nav menu -->
        #navigation {
            position:absolute;
            top:195px;
            left:60px;
        }
        .nav {
            list-style:none;
            width:100px;
            line-height:20px;
        }
        .nav li a {
            font-family: 'MarionRegular';
            color:#808080;
            font-size:10pt;
            text-decoration:none;
            background-color:rgba(0,0,0,.8);
        }
        .nav li a:hover {
            color:#5156CF;
        }

        <!-- Nav sub-menus -->
        div#navigation a:hover {
            color:5156CF;
        }

        .nav li .darkBtn {
            color:#3A3A3A;
        }

        <!-- Space for Nav Bar -->
        #nav_shield {
            position:absolute;
            left:0px;
            top:0px;
            width:260px;
            background-color:rgba(0,0,0,1);
        }

        <!-- Season/Episode Selection -->
        #SE_navigation {
            position:absolute;
            left:265px;
        }

        .SE_nav {
            list-style:none;
            width:100px;
            line-height:20px;
            font-size:19px;
        }

        .SE_nav li a {
            text-decoration:none;
            display:block;
            color:#FFFFFF;
            padding:2px;
            font-size:13;
        }

        .SE_nav li a:hover {
            color:#5156CF
        }

        <!-- Headers -->
        #showTitle {
            font-size:50px;
            color:#708090;
            position:absolute;
            top:2;
            left:260px;
            height:100px;
            width:600px;
        }

    </style>
</head>
<body>
    <div id='nav_shield' style='width: 260px; height: 180px; display: block'>
    </div>
    <div id='navigation' style='width:260px; display: block'>
        <ul class= 'nav'>
            <li><a href='../../TV_Shows/A-Zmenu.html'> ..</a></li>
            <li><a
                href='../../Index.html'>Home</a></li>
            <li><a href='#Files'>Files</a></li>
            <li><a href='../../Movies/A-Zmenu.html'>Movies</a></li>
            <li><a href='../../TV_Shows/A-Zmenu.html'>TV Shows</a></li>
            <li><a class='darkBtn' href='#Boomshakalaka'>word</a></li>
        </ul>
    </div>
    <!-- Main Section -->
    <div id='SE_navigation' style='width:260px;position:absolute;top:110px;left:265px;' >
        <header id='showTitle' style='font-size:50px;
            color:#708090;position:absolute;top:2;left:20px;height:50px;width:300px'>" & letterName & "</header>
        <ul class='SE_nav' style='position:absolute;top:75px;'>" & ¬						letterHtmlList & "
		 </ul>
    </div>
</body>
</html>"					ignoring application responses						set episodeFile to my writeCode(episodeFile, episodeText)					end ignoring				end if -----------------------------------------------------------------------------888888888			end repeat ----------------------------------------------------------------------------888			set docName to azMenuName & ".html" ------------------------------------------888			try --------------------------------------------------------------------------------------8888888b.				make new file at (dumpDirectory) with properties {name:docName} ----------IY88b			end try -------------------------------------------------------------------------------------------888			if {exists file (docName) in dumpDirectory} then -------------------------------Y88b  d88P 				set dFile to file (docName) in dumpDirectory ----------------------------------IY8888PI				set episodeFile to dFile as alias				set episodeText to "<!Doctype html>
 <head>
 <title>A-Z menu</title>
    <meta charset='UTF-8' />
    <style type='text/css'>
        html, body {
            height: 100%;
        }
        .container {
            margin-bottom: 2em;
             position:absolute;
            top:110px;
            left:255px;
        }
            article {
                background: #000 ;
            display: block;
            margin: 0 auto;
                min-height: 100%;
            width: 530px;
            overflow: hidden;
        }

                section {
                    display: block;
                    float: left;
                    overflow: hidden;
                    width: 255px;
            }
            aside {
                    float: left;
                    margin-left: 20px;
                    overflow: hidden;
                    width: 255px;
                }
                body {
                    margin: 0;
                    padding: 0;
                    height: 100%;
                    background-color: #000;
                }

        <!-- Nav menu -->
        #navigation {
            z-index:10
            position:absolute;
            top:195px;
            left:60px;
            display:none;
            user-select:none;
        }
        .nav {
            list-style:none;
            width:100px;
            line-height:20px;
        }
        .nav li a {
            font-family: 'MarionRegular';
            color:#808080;
            font-size:10pt;
            text-decoration:none;
            background-color:rgba(0,0,0,.8);
        }
        .nav li a:hover {
            color:#5156CF;
        }


        <!-- Nav sub-menus -->
        div#navigation a:hover {
            color:5156CF;
        }


        .nav li .darkBtn {
            color:#3A3A3A;
        }

        <!-- Space for Nav Bar -->
       #nav_shield {
	z-index:8;
	position: absolute;
	left:0px;
	top: 0px;
	background-color:rgba(0,0,0,1);
}

        <!-- AZ title not used-->
        <!-- header {
            text-decoration:none;
            color:#FFFFFF;
            display:block;
            overflow:hidden;
            font-family:'Techno';
            font-size:75px;
            position:absolute;
            top:20px;
            left:260px;
        } -->

        <!-- AZ menu -->
        #azNav {
            list-style:none;
            width:100px;
            line-height:20px;
        }
        .azNav li a {
            text-decoration:none;
            display:block;
            color:#FFFFFF;
            padding:2px;
            font-size:13;
        }

        .azNav li a:hover {
            color:#5156CF;
        }


    </style>
</head>
<body>
    <div id='nav_shield' style='width: 260px; height: 180px; display: block'>
    </div>
    <div id='mainContainer'>
    </div>
    <div id='navigation' style='display: block'>
        <ul class= 'nav'>
            <li><a href='../Index.html'> ..</a></li>
            <li><a
                href='../Index.html'>Home</a></li>
            <li><a href='#Files'>Files</a></li>
            <li><a href='../Movies/A-Zmenu.html'>Movies</a></li>
            <li><a href='../TV_Shows/A-Zmenu.html'>TV Shows</a></li>
            <li><a class='darkBtn' href='#Boomshakalaka'>word</a></li>
        </ul>
    </div>
       <div class='container'>
        <article>
        <section>
        <ul class='azNav'>
            <li><a href='../TV_Shows/A-Zmenu/-.html' >#</a></li>
            <li><a href='../TV_Shows/A-Zmenu/A.html' >A</a></li>
            <li><a href='../TV_Shows/A-Zmenu/B.html' >B</a></li>
            <li><a href='../TV_Shows/A-Zmenu/C.html' >C</a></li>
            <li><a href='../TV_Shows/A-Zmenu/D.html' >D</a></li>
            <li><a href='../TV_Shows/A-Zmenu/E.html' >E</a></li>
            <li><a href='../TV_Shows/A-Zmenu/F.html' >F</a></li>
            <li><a href='../TV_Shows/A-Zmenu/G.html' >G</a></li>
            <li><a href='../TV_Shows/A-Zmenu/H.html' >H</a></li>
            <li><a href='../TV_Shows/A-Zmenu/I.html' >I</a></li>
            <li><a href='../TV_Shows/A-Zmenu/J.html' >J</a></li>
            <li><a href='../TV_Shows/A-Zmenu/K.html' >K</a></li>
            <li><a href='../TV_Shows/A-Zmenu/L.html' >L</a></li>
            <li><a href='../TV_Shows/A-Zmenu/M.html' >M</a></li>
        </ul>
        </section>
        <aside>
        <ul class='azNav'>
            <li><a href='../TV_Shows/A-Zmenu/N.html' >N</a></li>
            <li><a href='../TV_Shows/A-Zmenu/O.html' >O</a></li>
            <li><a href='../TV_Shows/A-Zmenu/P.html' >P</a></li>
            <li><a href='../TV_Shows/A-Zmenu/Q.html' >Q</a></li>
            <li><a href='../TV_Shows/A-Zmenu/R.html' >R</a></li>
            <li><a href='../TV_Shows/A-Zmenu/S.html' >S</a></li>
            <li><a href='../TV_Shows/A-Zmenu/T.html' >T</a></li>
            <li><a href='../TV_Shows/A-Zmenu/U.html' >U</a></li>
            <li><a href='../TV_Shows/A-Zmenu/V.html' >V</a></li>
            <li><a href='../TV_Shows/A-Zmenu/W.html' >W</a></li>
            <li><a href='../TV_Shows/A-Zmenu/X.html' >X</a></li>
            <li><a href='../TV_Shows/A-Zmenu/Y.html' >Y</a></li>
            <li><a href='../TV_Shows/A-Zmenu/Z.html' >Z</a></li>
        </ul>
    </div>
</body>
</html>"				ignoring application responses					set episodeFile to my writeCode(episodeFile, episodeText)				end ignoring			end if --the section below makes blank pages for the unused letters		end repeat		set allLetters to "-" & "A" & "B" & "C" & "D" & "E" & "F" & "G" & "H" & "I" & "J" & "K" & "L" & "M" & "N" & "O" & "P" & "Q" & "R" & "S" & "T" & "U" & "V" & "W" & "X" & "Y" & "Z"		set allItems to every character of allLetters as string		repeat with anItem in allItems			if createdLetters does not contain anItem then				set letterName to anItem				set docName to letterName & ".html"				try					make new file at (azMenu) with properties {name:docName}				end try				try					if {exists file (docName) in azMenu} then						set dFile to file (docName) in azMenu --				d8888						set episodeFile to dFile as alias ----------------------------d8P888  						set letterHtmlList to ""						if letterName as string is "-" then							set letterName to "#" as string						end if						set episodeText to "<!Doctype html>
<head>
    <title>" & letterName & "</title>
    <meta charset='UTF-8' />
    <style>
        body {
            margin:0;
            padding:0;
            height:100%;
            background-color:#000;
        }

        <!-- Nav menu -->
        #navigation {
            position:absolute;
            top:195px;
            left:60px;
        }
        .nav {
            list-style:none;
            width:100px;
            line-height:20px;
        }
        .nav li a {
            font-family: 'MarionRegular';
            color:#808080;
            font-size:10pt;
            text-decoration:none;
            background-color:rgba(0,0,0,.8);
        }
        .nav li a:hover {
            color:#5156CF;
        }

        <!-- Nav sub-menus -->
        div#navigation a:hover {
            color:5156CF;
        }

        .nav li .darkBtn {
            color:#3A3A3A;
        }

        <!-- Space for Nav Bar -->
        #nav_shield {
            position:absolute;
            left:0px;
            top:0px;
            width:260px;
            background-color:rgba(0,0,0,1);
        }

        <!-- Season/Episode Selection -->
        #SE_navigation {
            position:absolute;
            left:265px;
        }

        .SE_nav {
            list-style:none;
            width:100px;
            line-height:20px;
            font-size:19px;
        }

        .SE_nav li a {
            text-decoration:none;
            display:block;
            color:#FFFFFF;
            padding:2px;
            font-size:13;
        }

        .SE_nav li a:hover {
            color:#5156CF
        }

        <!-- Headers -->
        #showTitle {
            font-size:50px;
            color:#708090;
            position:absolute;
            top:2;
            left:260px;
            height:100px;
            width:600px;
        }

    </style>
</head>
<body>
    <div id='nav_shield' style='width: 260px; height: 180px; display: block'>
    </div>
    <div id='navigation' style='width:260px; display: block'>
        <ul class= 'nav'>
            <li><a href='../../TV_Shows/A-Zmenu.html'> ..</a></li>
            <li><a
                href='../../Index.html'>Home</a></li>
            <li><a href='#Files'>Files</a></li>
            <li><a href='../../Movies/A-Zmenu.html'>Movies</a></li>
            <li><a href='../../TV_Shows/A-Zmenu.html'>TV Shows</a></li>
            <li><a class='darkBtn' href='#Boomshakalaka'>word</a></li>
        </ul>
    </div>
    <!-- Main Section -->
    <div id='SE_navigation' style='width:260px;position:absolute;top:110px;left:265px;' >
        <header id='showTitle' style='font-size:50px;
            color:#708090;position:absolute;top:2;left:20px;height:100px;width:600px;;'>" & letterName & "</header>
        <ul class='SE_nav' style='position:absolute;top:125px;'>" & ¬							letterHtmlList & "
		 </ul>
    </div>
</body>
</html>"						ignoring application responses							set episodeFile to my writeCode(episodeFile, episodeText)						end ignoring					end if -----------------------------------------------------------------------------888888888				end try			end if		end repeat ----------------------------------------------------------------------------888							else		if button returned of mediaChoice is "Movie" then --Movie section!			set movieName to name of dumpDirectory			set azList to folders in dumpDirectory			set createdLetters to {} -- used for determining letters at the end			repeat with azMenu in azList				set azMenuName to name of azMenu				set letterList to folders in azMenu				repeat with aLetter in letterList					set letterName to name of aLetter					copy letterName to end of createdLetters --used for letters at the end					set showList to folders in aLetter					repeat with aShow in showList						set showName to name of aShow						set episodeList to files in aShow						repeat with anEpisode in episodeList							set episodeName to name of anEpisode							if name extension of anEpisode ≠ "html" then --avoids html files								set AppleScript's text item delimiters to "."								set theExtension to "." & name extension of anEpisode								set episodeTitle to text item 1 of episodeName								set episodeTitle to my replace_chars(episodeTitle, " ", "_") --changes " " to "_"								set docName to episodeTitle & ".html"								set AppleScript's text item delimiters to {""}								if {exists folder (showName) in vidDirectory} then									set altShow to folder (showName) in vidDirectory									move anEpisode to altShow									set currentLoc to altShow as text								else									try										set altShow to make new folder at vidDirectory with properties {name:showName}									end try									move anEpisode to altShow									set currentLoc to altShow as text								end if							end if							set parentFol to folder of dumpDirectory --used as a delimiter (hehehe)							set parentName to name of parentFol							set pathName to currentLoc as text							set pathName to my replace_chars(pathName, " ", "_") --changes " " to "_"							set AppleScript's text item delimiters to parentName --this all points							set almostLoc to text item 2 of pathName --to the file for the HTML							set AppleScript's text item delimiters to episodeName							set nearlyLoc to text item 1 of almostLoc & episodeName							set fileLoc to text ((offset of ":" in nearlyLoc) + 1) thru -1 of nearlyLoc							set fileLoc to my replace_chars(fileLoc, ":", "/")							------------------------------------------------------------------------------....###...							-------------------------------------------------------------------.-----------..##.##..							set AppleScript's text item delimiters to {""} -----------------------..##...##.							try --prevents duplicates from being written-------------------------..##.....##								make new file at aShow with properties {name:docName} --######							end try --------------------------------------------------------------------.##.....##							if {exists file (docName) in aShow} then ---------------------------.##.....##								set dFile to file (docName) in aShow								set episodeFile to dFile as alias								--Code for episode html text file!								--you should modify this for your own coding needs of course								if button returned of preSubQuery is "Yes" then									set subtitleHTML to {}									set almostSubLoc to "../../../../videos/subtitles/" & episodeTitle									set oldTID to AppleScript's text item delimiters									set AppleScript's text item delimiters to "."									set allChoices to every text item of menuChoice									repeat with anItem in allChoices										if menuChoice contains anItem then											set AppleScript's text item delimiters to oldTID											set oldTID to AppleScript's text item delimiters											set AppleScript's text item delimiters to " -- "											set theHeading to first text item of anItem											set nameLang to second text item of anItem											set AppleScript's text item delimiters to oldTID											set oldTID to AppleScript's text item delimiters											set AppleScript's text item delimiters to "."											set subLoc to almostSubLoc & "." & nameLang & subTypeQuery											set totalList to "<track kind='subtitles' src='" & subLoc & "' srclang='" & theHeading & "' label='" & nameLang ¬												& "' />" & return											copy totalList to end of subtitleHTML										end if									end repeat									set episodeText to "<!DOCTYPE html>
<html>
    <head>
        <title>" & showName & "</title>
        <link href='http://vjs.zencdn.net/c/video-js.css' rel='stylesheet'>
        <script src='http://vjs.zencdn.net/c/video.js'></script>
        <style>
            body {
                background-color: #000000
            }
            .button {
          visibility:visible;
          opacity:0;
          -webkit-transition:visibility 0s linear 0.5s,opacity 0.5s linear;
          -moz-transition:visibility 0s linear 0.5s,opacity 0.5s linear;
          -ms-transition:visibility 0s linear 0.5s,opacity 0.5s linear;
          -o-transition:visibility 0s linear 0.5s,opacity 0.5s linear;
          transition:visibility 0s linear 0.5s,opacity 0.5s linear;
          position:absolute;
          top:10px;
          left:5px;
      }
      .button:hover {
          visibility:visible;
          opacity:1;
          -webkit-transition-delay:0s;
          -moz-transition-delay:0s;
          -ms-transition-delay:0s;
          -o-transition-delay:0s;
          transition-delay:0s;
      }
        </style>
    </head>
    <body>
        <video id='example_video_1' class='video-js vjs-default-skin'
      controls preload='auto' width='1080' height='720' autoplay
      data-setup='{\"example_option\":true}'>
      <source src='../../../../" & fileLoc & "' type='video/mp4'/>
      <source src='../../../../" & fileLoc & "' type='video/ogg'/>
      <source src='../../../../" & fileLoc & "' type='video/webm' />
      " & subtitleHTML & "
          </video>
          <button id='fullscreenvid' class='button'>Fullscreen video</button>
          <script type='text/javascript'>
              (function(window, document){
			var $ = function(selector,context){return(context||document).querySelector(selector)};

			var video  = $(\"video\"),
				iframe = $(\"iframe\"),
				domPrefixes = 'Webkit Moz O ms Khtml'.split(' ');

			var fullscreen = function(elem) {
				var prefix;
				// Mozilla and webkit intialise fullscreen slightly differently
				for ( var i = -1, len = domPrefixes.length; ++i < len; ) {
		          prefix = domPrefixes[i].toLowerCase();

				  if ( elem[prefix + 'EnterFullScreen'] ) {
		            // Webkit uses EnterFullScreen for video
					return prefix + 'EnterFullScreen';
					break;
		          } else if( elem[prefix + 'RequestFullScreen'] ) {
					// Mozilla uses RequestFullScreen for all elements and webkit uses it for non video elements
					return prefix + 'RequestFullScreen';
					break;
				  }
		        }

				return false;
			};

			// Will return fullscreen method as a string if supported e.g. 'mozRequestFullScreen' || false;
			var fullscreenvideo = fullscreen(document.createElement(\"video\"));

			// Webkit uses 'requestFullScreen' for non video elements
			var fullscreenother = fullscreen(document.createElement(\"iframe\"));

			if(!fullscreen) {
				alert(\"Fullscreen won't work, please make sure you're using a browser that supports it and you have enabled the feature\");
				return;
			}

			// Should add prefixed events for potential ms/o or unprefixed support too
			video.addEventListener(\"webkitfullscreenchange\",function(){
				console.log(document.webkitIsFullScreen);
			}, false);
			video.addEventListener(\"mozfullscreenchange\",function(){
				console.log(document.mozFullScreen);
			}, false);

			$(\"#fullscreenvid\").addEventListener(\"click\", function(){
				// The test returns a string so we can easily call it on a click event
				video[fullscreenvideo]();
			}, false);
			$(\"#fullscreeniframe\").addEventListener(\"click\", function(){
				// iframe fullscreen and non video elements in webkit use request over enter
				iframe[fullscreenother]();
			}, false);
		})(this, this.document);
            </script>
      </body>
  </html>"								else									set episodeText to "<!DOCTYPE html>
<html>
    <head>
	<title>" & showName & "</title>
        <style>
             #video_background {
            top:0;
            bottom:0;
            left:0;
            right:0;
            z-index:-10;
          position:fixed;
          height:100%;
          width:100%;
          background-color:#000000
      }
      .button {
          visibility:visible;
          opacity:0;
          -webkit-transition:visibility 0s linear 0.5s,opacity 0.5s linear;
          -moz-transition:visibility 0s linear 0.5s,opacity 0.5s linear;
          -ms-transition:visibility 0s linear 0.5s,opacity 0.5s linear;
          -o-transition:visibility 0s linear 0.5s,opacity 0.5s linear;
          transition:visibility 0s linear 0.5s,opacity 0.5s linear;
          position:absolute;
          top:10px;
          left:5px;
      }
      .button:hover {
          visibility:visible;
          opacity:1;
          -webkit-transition-delay:0s;
          -moz-transition-delay:0s;
          -ms-transition-delay:0s;
          -o-transition-delay:0s;
          transition-delay:0s;
      }
  </style>
  </head>
  <body>
      <div class='fl'>
          <video id='video_background' preload='auto|metadata' height='100%'controls='controls' width='100%' autoplay>
          <source src='../../../../" & fileLoc & "' type='video/mp4'/>
          <source src='../../../../" & fileLoc & "' type='video/ogg'/>
          <source src='../../../../" & fileLoc & "' type='video/webm' />
  </video>
  <button id='fullscreenvid' class='button'>Fullscreen video</button>
</div>
  <script>
      (function(window, document){
			var $ = function(selector,context){return(context||document).querySelector(selector)};

			var video  = $(\"video\"),
				iframe = $(\"iframe\"),
				domPrefixes = 'Webkit Moz O ms Khtml'.split(' ');

			var fullscreen = function(elem) {
				var prefix;
				// Mozilla and webkit intialise fullscreen slightly differently
				for ( var i = -1, len = domPrefixes.length; ++i < len; ) {
		          prefix = domPrefixes[i].toLowerCase();

				  if ( elem[prefix + 'EnterFullScreen'] ) {
		            // Webkit uses EnterFullScreen for video
					return prefix + 'EnterFullScreen';
					break;
		          } else if( elem[prefix + 'RequestFullScreen'] ) {
					// Mozilla uses RequestFullScreen for all elements and webkit uses it for non video elements
					return prefix + 'RequestFullScreen';
					break;
				  }
		        }

				return false;
			};

			// Will return fullscreen method as a string if supported e.g. 'mozRequestFullScreen' || false;
			var fullscreenvideo = fullscreen(document.createElement(\"video\"));

			// Webkit uses 'requestFullScreen' for non video elements
			var fullscreenother = fullscreen(document.createElement(\"iframe\"));

			if(!fullscreen) {
				alert(\"Fullscreen won't work, please make sure you're using a browser that supports it and you have enabled the feature\");
				return;
			}

			// Should add prefixed events for potential ms/o or unprefixed support too
			video.addEventListener(\"webkitfullscreenchange\",function(){
				console.log(document.webkitIsFullScreen);
			}, false);
			video.addEventListener(\"mozfullscreenchange\",function(){
				console.log(document.mozFullScreen);
			}, false);

			$(\"#fullscreenvid\").addEventListener(\"click\", function(){
				// The test returns a string so we can easily call it on a click event
				video[fullscreenvideo]();
			}, false);
			$(\"#fullscreeniframe\").addEventListener(\"click\", function(){
				// iframe fullscreen and non video elements in webkit use request over enter
				iframe[fullscreenother]();
			}, false);
		})(this, this.document);

    </script>
</body>
</html>"								end if								ignoring application responses									set episodeFile to my writeCode(episodeFile, episodeText)								end ignoring							end if						end repeat						set docName to showName & ".html"						set altShowName to showName as text						set altShowName to my replace_chars(altShowName, "_", " ")						try							make new file at aLetter with properties {name:docName}						end try						if {exists file (docName) in aLetter} then							set dFile to file (docName) in aLetter							set episodeFile to dFile as alias							set listPart1 to "<li><a href='" --auto generate HTML lists-----.#######...							set listPart6 to "'>" ---------------------------------------------------.##...........##.	  							set listPart8 to "</a></li>" -----------------------------------------.##...........##.								set showHtmlList to {} ----------------------------------------------.#######....							set allFiles to every file in aShow ----------------------------------.##...........##.							repeat with aFile in allFiles -----------------------------------------.##...........##.								if name extension of aFile is "html" then -------------------.#######....										set htmlFile to name of aFile as text									set trueSeasonName to text 1 thru ((offset of "." in htmlFile) - 1) of htmlFile									set trueSeasonName to my replace_chars(trueSeasonName, "_", " ")									set totalList to listPart1 & "../../../Movies" & "/" & azMenuName & "/" & letterName & "/" & showName & "/" & htmlFile & listPart6 & trueSeasonName & listPart8									copy totalList to end of showHtmlList								end if							end repeat							set episodeText to "<!Doctype html>
<head>
    <title>" & showName & "</title>
    <meta charset='UTF-8' />
    <style>
	body {
            margin:0;
            padding:0;
            height:100%;
            background-color:#000;
        }

        <!-- Nav menu -->
        #navigation {
            position:absolute;
            top:195px;
            left:60px;
        }
        .nav {
            list-style:none;
            width:100px;
            line-height:20px;
        }
        .nav li a {
            font-family: 'MarionRegular';
            color:#808080;
            font-size:10pt;
            text-decoration:none;
            background-color:rgba(0,0,0,.8);
        }
        .nav li a:hover {
            color:#5156CF;
        }

        <!-- Nav sub-menus -->
        div#navigation a:hover {
            color:5156CF;
        }

        .nav li .darkBtn {
            color:#3A3A3A;
        }

        <!-- Space for Nav Bar -->
        #nav_shield {
            position:absolute;
            left:0px;
            top:0px;
            width:260px;
            background-color:rgba(0,0,0,1);
        }

        <!-- Season/Episode Selection -->
        #SE_navigation {
            position:absolute;
            left:265px;
        }

        .SE_nav {
            list-style:none;
            width:500px;
            line-height:20px;
            font-size:19px;
        }

        .SE_nav li a {
            text-decoration:none;
            display:block;
            color:#FFFFFF;
            padding:2px;
            font-size:13;
        }

        .SE_nav li a:hover {
            color:#5156CF
        }

        <!-- Headers -->
        #showTitle {
            font-size:50px;
            color:#708090;
            position:absolute;
            height:100px;
            width:600px;
        }

    </style>
</head>
<body>
    <div id='nav_shield' style='width: 260px; height: 180px; display: block'>
    </div>
    <div id='navigation' style='width:260px; display: block'>
        <ul class= 'nav'>
            <li><a href='../../../Movies/A-Zmenu/" & letterName & ".html'> ..</a></li>
            <li><a href='../../../Index.html'>Home</a></li>
            <li><a href='#Files'>Files</a></li>
            <li><a href='../../../Movies/A-Zmenu.html'>Movies</a></li>
            <li><a href='../../../TV_Shows/A-Zmenu.html'>TV Shows</a></li>
            <li><a class='darkBtn' href='#Boomshakalaka'>word</a></li>
        </ul>
    </div>
    <!-- Main Section -->
    <div id='SE_navigation' style='width:260px;position:absolute;top:110px;left:265px;' >
        <header id='showTitle' style='font-size:50px;
            color:#708090;position:absolute;top:2;left:20px;height:100px;width:600px;'>" & altShowName & "</header>
        <ul class='SE_nav' style='position:absolute;top:110px;'>" & ¬								showHtmlList & "
		</ul>
    </div>
</body>
</html>"							ignoring application responses								set episodeFile to my writeCode(episodeFile, episodeText)							end ignoring						end if						set docName to letterName & ".html"						try							make new file at (azMenu) with properties {name:docName}						end try						if {exists file (docName) in azMenu} then							set dFile to file (docName) in azMenu --			-----..######...							set episodeFile to dFile as alias ---------------------------.##...........##.							set listPart1 to "<li><a href='" --------------------------.##................							set listPart6 to "'>" ----------------------------------------.##................							set listPart8 to "</a></li>" ------------------------------.##.................							set letterHtmlList to {} -----------------------------------.##..........##..							set allFiles to every file in aLetter ------------------------.######. ...							repeat with aFile in allFiles ---------------------------------------------								if name extension of aFile is "html" then									set htmlFile to name of aFile as text									set trueShowName to text 1 thru ((offset of "." in htmlFile) - 1) of htmlFile									set trueShowName to my replace_chars(trueShowName, "_", " ")									set totalList to listPart1 & "../../Movies" & "/" & azMenuName & "/" & letterName & "/" & htmlFile & listPart6 & trueShowName & listPart8									copy totalList to end of letterHtmlList								end if							end repeat							if letterName as string is "-" then								set letterName to "#" as string							end if							set episodeText to "<!Doctype html>
<head>
    <title>" & letterName & "</title>
    <meta charset='UTF-8' />
    <style>
        body {
            margin:0;
            padding:0;
            height:100%;
            background-color:#000;
        }

        <!-- Nav menu -->
        #navigation {
            position:absolute;
            top:195px;
            left:60px;
        }
        .nav {
            list-style:none;
            width:100px;
            line-height:20px;
        }
        .nav li a {
            font-family: 'MarionRegular';
            color:#808080;
            font-size:10pt;
            text-decoration:none;
            background-color:rgba(0,0,0,.8);
        }
        .nav li a:hover {
            color:#5156CF;
        }

        <!-- Nav sub-menus -->
        div#navigation a:hover {
            color:5156CF;
        }

        .nav li .darkBtn {
            color:#3A3A3A;
        }

        <!-- Space for Nav Bar -->
        #nav_shield {
            position:absolute;
            left:0px;
            top:0px;
            width:260px;
            background-color:rgba(0,0,0,1);
        }

        <!-- Season/Episode Selection -->
        #SE_navigation {
            position:absolute;
            left:265px;
        }

        .SE_nav {
            list-style:none;
            width:500px;
            line-height:20px;
            font-size:19px;
        }

        .SE_nav li a {
            text-decoration:none;
            display:block;
            color:#FFFFFF;
            padding:2px;
            font-size:13;
        }

        .SE_nav li a:hover {
            color:#5156CF
        }

        <!-- Headers -->
        #showTitle {
            font-size:50px;
            color:#708090;
            position:absolute;
            top:2;
            left:260px;
            height:100px;
            width:300px;
        }

    </style>
</head>
<body>
    <div id='nav_shield' style='width: 260px; height: 180px; display: block'>
    </div>
    <div id='navigation' style='width:260px; display: block'>
        <ul class= 'nav'>
            <li><a href='../../Movies/A-Zmenu.html'> ..</a></li>
            <li><a
                href='../../Index.html'>Home</a></li>
            <li><a href='#Files'>Files</a></li>
            <li><a href='../../Movies/A-Zmenu.html'>Movies</a></li>
            <li><a href='../../TV_Shows/A-Zmenu.html'>TV Shows</a></li>
            <li><a class='darkBtn' href='#Boomshakalaka'>word</a></li>
        </ul>
    </div>
    <!-- Main Section -->
    <div id='SE_navigation' style='width:260px;position:absolute;top:110px;left:265px;' >
        <header id='showTitle' style='font-size:50px;
            color:#708090;position:absolute;top:2;left:20px;height:50px;width:300px'>" & letterName & "</header>
        <ul class='SE_nav' style='position:absolute;top:75px'>" & ¬								letterHtmlList & "
		 </ul>
    </div>
</body>
</html>"							ignoring application responses								set episodeFile to my writeCode(episodeFile, episodeText)							end ignoring						end if					end repeat					set docName to azMenuName & ".html" --------------------------------------.########.					try -------------------------------------------------------------------------------------.##.............##						make new file at (dumpDirectory) with properties {name:docName} --##...............##					end try -------------------------------------------------------------------------------.##................##					if {exists file (docName) in dumpDirectory} then -----------------------------.##..............##						set dFile to file (docName) in dumpDirectory ------------------------------.##.............##						set episodeFile to dFile as alias -------------------------------------------.########.						set episodeText to "<!Doctype html>
 <head>
 <title>A-Z menu</title>
    <meta charset='UTF-8' />
    <style type='text/css'>
        html, body {
            height: 100%;
        }
        .container {
            margin-bottom: 2em;
             position:absolute;
            top:110px;
            left:255px;
        }
            article {
                background: #000 ;
            display: block;
            margin: 0 auto;
                min-height: 100%;
            width: 530px;
            overflow: hidden;
        }

                section {
                    display: block;
                    float: left;
                    overflow: hidden;
                    width: 255px;
            }
            aside {
                    float: left;
                    margin-left: 20px;
                    overflow: hidden;
                    width: 255px;
                }
                body {
                    margin: 0;
                    padding: 0;
                    height: 100%;
                    background-color: #000;
                }

        <!-- Nav menu -->
        #navigation {
            z-index:10
            position:absolute;
            top:195px;
            left:60px;
            display:none;
            user-select:none;
        }
        .nav {
            list-style:none;
            width:100px;
            line-height:20px;
        }
        .nav li a {
            font-family: 'MarionRegular';
            color:#808080;
            font-size:10pt;
            text-decoration:none;
            background-color:rgba(0,0,0,.8);
        }
        .nav li a:hover {
            color:#5156CF;
        }


        <!-- Nav sub-menus -->
        div#navigation a:hover {
            color:5156CF;
        }


        .nav li .darkBtn {
            color:#3A3A3A;
        }

        <!-- Space for Nav Bar -->
       #nav_shield {
	z-index:8;
	position: absolute;
	left:0px;
	top: 0px;
	background-color:rgba(0,0,0,1);
}

        <!-- AZ title not used-->
        <!-- header {
            text-decoration:none;
            color:#FFFFFF;
            display:block;
            overflow:hidden;
            font-family:'Techno';
            font-size:75px;
            position:absolute;
            top:20px;
            left:260px;
        } -->

        <!-- AZ menu -->
        #azNav {
            list-style:none;
            width:100px;
            line-height:20px;
        }
        .azNav li a {
            text-decoration:none;
            display:block;
            color:#FFFFFF;
            padding:2px;
            font-size:13;
        }

        .azNav li a:hover {
            color:#5156CF;
        }


    </style>
</head>
<body>
    <div id='nav_shield' style='width: 260px; height: 180px; display: block'>
    </div>
    <div id='mainContainer'>
    </div>
    <div id='navigation' style='display: block'>
        <ul class= 'nav'>
            <li><a href='../Index.html'> ..</a></li>
            <li><a
                href='../Index.html'>Home</a></li>
            <li><a href='#Files'>Files</a></li>
            <li><a href='../Movies/A-Zmenu.html'>Movies</a></li>
            <li><a href='../TV_Shows/A-Zmenu.html'>TV Shows</a></li>
            <li><a class='darkBtn' href='#Boomshakalaka'>word</a></li>
        </ul>
    </div>
       <div class='container'>
        <article>
        <section>
        <ul class='azNav'>
            <li><a href='../Movies/A-Zmenu/-.html' >#</a></li>
            <li><a href='../Movies/A-Zmenu/A.html' >A</a></li>
            <li><a href='../Movies/A-Zmenu/B.html' >B</a></li>
            <li><a href='../Movies/A-Zmenu/C.html' >C</a></li>
            <li><a href='../Movies/A-Zmenu/D.html' >D</a></li>
            <li><a href='../Movies/A-Zmenu/E.html' >E</a></li>
            <li><a href='../Movies/A-Zmenu/F.html' >F</a></li>
            <li><a href='../Movies/A-Zmenu/G.html' >G</a></li>
            <li><a href='../Movies/A-Zmenu/H.html' >H</a></li>
            <li><a href='../Movies/A-Zmenu/I.html' >I</a></li>
            <li><a href='../Movies/A-Zmenu/J.html' >J</a></li>
            <li><a href='../Movies/A-Zmenu/K.html' >K</a></li>
            <li><a href='../Movies/A-Zmenu/L.html' >L</a></li>
            <li><a href='../Movies/A-Zmenu/M.html' >M</a></li>
        </ul>
        </section>
        <aside>
        <ul class='azNav'>
            <li><a href='../Movies/A-Zmenu/N.html' >N</a></li>
            <li><a href='../Movies/A-Zmenu/O.html' >O</a></li>
            <li><a href='../Movies/A-Zmenu/P.html' >P</a></li>
            <li><a href='../Movies/A-Zmenu/Q.html' >Q</a></li>
            <li><a href='../Movies/A-Zmenu/R.html' >R</a></li>
            <li><a href='../Movies/A-Zmenu/S.html' >S</a></li>
            <li><a href='../Movies/A-Zmenu/T.html' >T</a></li>
            <li><a href='../Movies/A-Zmenu/U.html' >U</a></li>
            <li><a href='../Movies/A-Zmenu/V.html' >V</a></li>
            <li><a href='../Movies/A-Zmenu/W.html' >W</a></li>
            <li><a href='../Movies/A-Zmenu/X.html' >X</a></li>
            <li><a href='../Movies/A-Zmenu/Y.html' >Y</a></li>
            <li><a href='../Movies/A-Zmenu/Z.html' >Z</a></li>
        </ul>
    </div>
</body>
</html>"						ignoring application responses							set episodeFile to my writeCode(episodeFile, episodeText)						end ignoring					end if				end repeat			end repeat		end if		set allLetters to "-" & "A" & "B" & "C" & "D" & "E" & "F" & "G" & "H" & "I" & "J" & "K" & "L" & "M" & "N" & "O" & "P" & "Q" & "R" & "S" & "T" & "U" & "V" & "W" & "X" & "Y" & "Z"		set allItems to every character of allLetters as string		repeat with anItem in allItems			if createdLetters does not contain anItem then				set letterName to anItem				set docName to letterName & ".html"				try					make new file at (azMenu) with properties {name:docName}				end try				try					if {exists file (docName) in azMenu} then						set dFile to file (docName) in azMenu --				d8888						set episodeFile to dFile as alias ----------------------------d8P888  						set letterHtmlList to ""						if letterName as string is "-" then							set letterName to "#" as string						end if						set episodeText to "<!Doctype html>
<head>
    <title>" & letterName & "</title>
    <meta charset='UTF-8' />
    <style>
        body {
            margin:0;
            padding:0;
            height:100%;
            background-color:#000;
        }

        <!-- Nav menu -->
        #navigation {
            position:absolute;
            top:195px;
            left:60px;
        }
        .nav {
            list-style:none;
            width:100px;
            line-height:20px;
        }
        .nav li a {
            font-family: 'MarionRegular';
            color:#808080;
            font-size:10pt;
            text-decoration:none;
            background-color:rgba(0,0,0,.8);
        }
        .nav li a:hover {
            color:#5156CF;
        }

        <!-- Nav sub-menus -->
        div#navigation a:hover {
            color:5156CF;
        }

        .nav li .darkBtn {
            color:#3A3A3A;
        }

        <!-- Space for Nav Bar -->
        #nav_shield {
            position:absolute;
            left:0px;
            top:0px;
            width:260px;
            background-color:rgba(0,0,0,1);
        }

        <!-- Season/Episode Selection -->
        #SE_navigation {
            position:absolute;
            left:265px;
        }

        .SE_nav {
            list-style:none;
            width:100px;
            line-height:20px;
            font-size:19px;
        }

        .SE_nav li a {
            text-decoration:none;
            display:block;
            color:#FFFFFF;
            padding:2px;
            font-size:13;
        }

        .SE_nav li a:hover {
            color:#5156CF
        }

        <!-- Headers -->
        #showTitle {
            font-size:50px;
            color:#708090;
            position:absolute;
            top:2;
            left:260px;
            height:100px;
            width:600px;
        }

    </style>
</head>
<body>
    <div id='nav_shield' style='width: 260px; height: 180px; display: block'>
    </div>
    <div id='navigation' style='width:260px; display: block'>
        <ul class= 'nav'>
            <li><a href='../../TV_Shows/A-Zmenu.html'> ..</a></li>
            <li><a
                href='../../Index.html'>Home</a></li>
            <li><a href='#Files'>Files</a></li>
            <li><a href='../../Movies/A-Zmenu.html'>Movies</a></li>
            <li><a href='../../TV_Shows/A-Zmenu.html'>TV Shows</a></li>
            <li><a class='darkBtn' href='#Boomshakalaka'>word</a></li>
        </ul>
    </div>
    <!-- Main Section -->
    <div id='SE_navigation' style='width:260px;position:absolute;top:110px;left:265px;' >
        <header id='showTitle' style='font-size:50px;
            color:#708090;position:absolute;top:2;left:20px;height:100px;width:600px'>" & letterName & "</header>
        <ul class='SE_nav' style='position:absolute;top:125px;'>" & ¬							letterHtmlList & "
		 </ul>
    </div>
</body>
</html>"						ignoring application responses							set episodeFile to my writeCode(episodeFile, episodeText)						end ignoring					end if -----------------------------------------------------------------------------888888888				end try			end if		end repeat ----------------------------------------------------------------------------888			end ifend tell--------------on writeCode(episodeFile, episodeText) --don't even ask me why this section works...	set bar to open for access episodeFile	close access bar	try		write episodeText to episodeFile		close access episodeFile		open for access episodeFile	end try	try		close access episodeFile	end try	return episodeFileend writeCodeon replace_chars(this_text, search_string, replacement_string)	set AppleScript's text item delimiters to the search_string	set the item_list to every text item of this_text	set AppleScript's text item delimiters to the replacement_string	set this_text to the item_list as string	set AppleScript's text item delimiters to ""	return this_textend replace_charson numberCorrection(theName)	global theNumbers, numberLabel	set oldTID to AppleScript's text item delimiters	repeat with i from 1 to count of theNumbers		set AppleScript's text item delimiters to item i of theNumbers		set theTextBits to text items of theName		set AppleScript's text item delimiters to item 1 of numberLabel		set theName to theTextBits as text	end repeat	set AppleScript's text item delimiters to oldTID	return theNameend numberCorrection
