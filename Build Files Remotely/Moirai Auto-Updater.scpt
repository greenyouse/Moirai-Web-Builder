(*
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
*)activate application "Terminal"tell application "System Events"	tell process "Terminal"		keystroke "cd /users/Edmundo/library/'application support'/xbmc/addons/Moirai_web_builder; scp edmundo@192.168.0.11:\"/Users/edmundo/library/application\\ support/xbmc/userdata/database/MyVideos60.db\" MyVideos60.db" & return		delay 10	end tell	tell application "Finder" to quit application "Terminal"end tell(* This script will retrieve the list of movies on the server (using the MyVideos60.db) and build all the neccessary HTML pages for the website.  Instead of just updating the site, it rebuilds all the webpages from scratch.  It's difficult to update without rebuiding everything because many HTML pages depend upon other pages so deleting and adding only select pages will leave some web pages with dead links or new content that has no link.  If you can design a method to only update a minimal number of pages, that should speed up the update process significantly.
*)set theNumbers to {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9"}set numberLabel to {"-"}set theSpaces to {" "}set theColons to {":"}set theDashes to {"_"} --helpful for displaying names in html5 list generationset theNormalCharacters to {"/"} --change ":" to "/" for html5 codingtell application "Finder"	set HD_name to get name of startup diskend tellset userName to do shell script "w -h | sort -u -t' ' -k1,1 | while read user etc
do
  homedir=$(dscl . -read /Users/$user NFSHomeDirectory | cut -d' ' -f2)
  echo $user
done"--below is the section for the new database for moviesset loc to space & "~/library/'application support'/xbmc/addons/Moirai_web_Builder/MyVideos60.db" & spaceset head to "sqlite3 -line" & loc & quote -- the "-line" option outputs the column data and heading one line at a time - useful for parsing the output for particular data items.set tail to quoteset All to "select c22 from movie; " -- retrieves the titles from the movie tableset movieTable to do shell script head & All & tailset movieTable to movieTable as textset allPara to every paragraph in movieTable --wonky but ...set newTitleList to {}repeat with aPara in allPara --loop for Movie Titles!	if (text of aPara) ­ "" then		set aTitle to text ((offset of " c22 = " in aPara) + 7) thru -1 of aPara		copy aTitle to end of newTitleList	end ifend repeatset newTitleList to my replace_chars(newTitleList, "= ", return) --creates veritcal listtell application "Finder"	set Moirai_dir to (HD_name & ":Users:" & userName & ":Library:Application Support:XBMC:addons:Moirai_web_builder:") as alias	if not (exists file ("NewMovie_data" as string) in Moirai_dir) then		make new file at Moirai_dir with properties {name:"NewMovie_data"}	end if	set movie_data to (HD_name & ":Users:" & userName & ":Library:Application Support:XBMC:addons:Moirai_web_builder:NewMovie_data:")	my write_to_file(newTitleList, movie_data, false) --false will erase previous contents from the text file	set movie_data to movie_data as string	set the open_movie_data to open for access file movie_data with write permission	set newInfo to read file movie_data using delimiter "= "	close access the open_movie_data	set newInfoText to newInfo as text	--Lets add HTML pages now		set movie_data to (HD_name & ":Users:" & userName & ":Library:Application Support:XBMC:addons:Moirai_web_builder:NewMovie_data:") as alias	set moiraiDir to folder of movie_data	set App_folder to folder ("Sites") in moiraiDir	if not (exists folder ("Movies" as string) in App_folder) then --check for folders		make new folder at App_folder with properties {name:"Movies"}	end if	set movieDir to folder ("Movies" as string) in App_folder	if (count of items in movieDir) is greater than 1 then --clear folders		delete every item in movieDir	end if	if not (exists folder ("videos" as string) in App_folder) then		make new folder at App_folder with properties {name:"videos"}	end if	set videoDir to folder ("videos" as string) in App_folder	if not (exists folder ("Movies" as string) in videoDir) then		make new folder at videoDir with properties {name:"Movies"}	end if	set vid_MovieDir to folder ("Movies" as string) in videoDir	if (count of items in vid_MovieDir) is greater than 1 then		delete every item in vid_MovieDir	end if	set azMenu to make new folder at vid_MovieDir with properties {name:"A-ZMenu"}	set azMenuName to (name of azMenu)	set oldTID to AppleScript's text item delimiters	set AppleScript's text item delimiters to return	set allContent to every text item of newInfoText	set AppleScript's text item delimiters to oldTID	set firstText to text item 1 of allContent	set firstText to my trim_line(firstText, " ", 0) --get rid of an empty space	copy firstText to text item 1 of allContent	set oldTID to AppleScript's text item delimiters	set AppleScript's text item delimiters to return & " "	set allContent to every text item of allContent	set AppleScript's text item delimiters to oldTID	repeat with anItem in allContent		set oldTID to AppleScript's text item delimiters		set AppleScript's text item delimiters to "Movies/"		set titleInfo to text item 2 of anItem		set AppleScript's text item delimiters to "."		set letterName to first character of titleInfo as text		set letterName to my CapitalizeFirstLetter_ofEveryWord(letterName)		set showName to text item 1 of titleInfo as text		set episodeName to titleInfo as text		set showName to my replace_chars(showName, " ", "_")		set episodeName to my replace_chars(episodeName, " ", "_")		set aLetter to make new folder at azMenu with properties {name:letterName}		set aShow to make new folder at aLetter with properties {name:showName}		set anEpisode to make new file at aShow with properties {name:episodeName}	end repeat	--now we'll build HTML files!	--this part is messy and complex, work here would be greatly appreciated! :-)		set azList to folders in vid_MovieDir --changes title of each video file for later step	repeat with azMenu in azList		set azMenuName to name of azMenu		set alphaList to folders in azMenu		repeat with aLetter in alphaList			set showList to folders in aLetter			repeat with aShow in showList				set showName to name of aShow as text				set allVids to files in aShow --builds directory based on video title				repeat with aVid in allVids					set aLabel to name of aVid as text					if aLabel does not end with ".nfo" then --Keeps .nfo files in their place						set letterTitle to character 1 of aLabel						set showTitle to text 1 thru ((offset of "." in aLabel) - 1) of aLabel						set showTitle to my replace_chars(showTitle, " ", "_")						try							set oldLetter to letterTitle --test for number							set letterTitle to number							set numTest to true							set letterTitle to oldLetter						end try						if numTest is true then							set letterTitle to my numberCorrection(letterTitle) --convert number to "Num"						end if						if (exists folder (azMenuName as string) in movieDir) then							set alphaFolder to folder named azMenuName in movieDir						else							set alphaFolder to make new folder at movieDir with properties {name:azMenuName}						end if						if (exists folder (letterTitle as string) in alphaFolder) then							set letterFolder to folder named letterTitle in alphaFolder						else							make new folder at alphaFolder with properties {name:letterTitle}							set letterFolder to folder named letterTitle in alphaFolder						end if						if (exists folder (showTitle as string) in letterFolder) then							set showFolder to folder named showTitle in letterFolder						else							make new folder at letterFolder with properties {name:showTitle}							set showFolder to folder named showTitle in letterFolder						end if						try --done to prevent duplicates from being entered							move aVid to showFolder						end try					end if				end repeat			end repeat		end repeat	end repeat	set azList to folders in movieDir	set createdLetters to {} -- used for determining letters at the end	repeat with azMenu in azList		set azMenuName to name of azMenu		set letterList to folders in azMenu		repeat with aLetter in letterList			set letterName to name of aLetter			copy letterName to end of createdLetters --used for letters at the end			set showList to folders in aLetter			repeat with aShow in showList				set showName to name of aShow				set episodeList to files in aShow				repeat with anEpisode in episodeList					set episodeName to name of anEpisode					if name extension of anEpisode ­ "html" then --avoids html files						set AppleScript's text item delimiters to "."						set theExtension to "." & name extension of anEpisode						set episodeTitle to text item 1 of episodeName						set episodeTitle to my replace_chars(episodeTitle, " ", "_") --changes " " to "_"						set docName to episodeTitle & ".html"						set altMenu to folder (azMenuName) in vid_MovieDir						set AppleScript's text item delimiters to {""}						if {exists folder (letterName) in altMenu} then							set altLetter to folder (letterName) in altMenu							if {exists folder (showName) in altLetter} then								set altShow to folder (showName) in altLetter								move anEpisode to altShow								set currentLoc to altShow as text							else								try									set altShow to make new folder at altLetter with properties {name:showName}								end try								move anEpisode to altShow								set currentLoc to altShow as text							end if						else							try								set altLetter to make new folder at altMenu with properties {name:letterName}								set altShow to make new folder at altLetter with properties {name:showName}							end try							move anEpisode to altShow							set currentLoc to altShow as text						end if					else						try							set altMenu to make new folder at vid_MovieDir with properties {name:menuName}							set altLetter to make new folder at altMenu with properties {name:letterName}							set altShow to make new folder at altLetter with properties {name:showName}						end try						move anEpisode to altShow						set currentLoc to altShow as text					end if					set parentFol to folder of movieDir --used as a delimiter (hehehe)					set parentName to name of parentFol					set pathName to currentLoc as text					set pathName to my replace_chars(pathName, " ", "_") --changes " " to "_"					set AppleScript's text item delimiters to parentName --this all points					set almostLoc to text item 2 of pathName --to the file for the HTML					set AppleScript's text item delimiters to episodeName					set nearlyLoc to text item 1 of almostLoc & episodeName					set fileLoc to text ((offset of ":" in nearlyLoc) + 1) thru -1 of nearlyLoc					------------------------------------------------------------------------------....###...					-------------------------------------------------------------------.-----------..##.##..					set AppleScript's text item delimiters to {""} -----------------------..##...##.					try --prevents duplicates from being written-------------------------..##.....##						make new file at aShow with properties {name:docName} --######					end try --------------------------------------------------------------------.##.....##					if {exists file (docName) in aShow} then ---------------------------.##.....##						set dFile to file (docName) in aShow						set episodeFile to dFile as alias						--Code for episode html text file!						--you should modify this for your own coding needs of course						set episodeText to "<!DOCTYPE html>
<html>															   
    <head>														
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
</html>"						ignoring application responses							set episodeFile to my writeCode(episodeFile, episodeText)						end ignoring					end if				end repeat				set docName to showName & ".html"				set altShowName to showName as text				set altShowName to my replace_chars(altShowName, "_", " ")				try					make new file at aLetter with properties {name:docName}				end try				if {exists file (docName) in aLetter} then					set dFile to file (docName) in aLetter					set episodeFile to dFile as alias					set listPart1 to "<li><a href='" --auto generate HTML lists-----.#######...					set listPart6 to "'>" ---------------------------------------------------.##...........##.	  					set listPart8 to "</a></li>" -----------------------------------------.##...........##.						set showHtmlList to {} ----------------------------------------------.#######....					set allFiles to every file in aShow ----------------------------------.##...........##.					repeat with aFile in allFiles -----------------------------------------.##...........##.						if name extension of aFile is "html" then -------------------.#######....								set htmlFile to name of aFile as text							set trueSeasonName to text 1 thru ((offset of "." in htmlFile) - 1) of htmlFile							set trueSeasonName to my replace_chars(trueSeasonName, "_", " ")							set totalList to listPart1 & "../../../Movies" & "/" & azMenuName & "/" & letterName & "/" & showName & "/" & htmlFile & listPart6 & trueSeasonName & listPart8							copy totalList to end of showHtmlList						end if					end repeat					set episodeText to "<!Doctype html>
<head>
    <title>A Show Example</title>
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
            font-family: 'MarionRegular';
            color:#FFFFFF;
            text-decoration:none;
            background-color:rgba(0,0,0,.8);
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
        <ul class='SE_nav' style='position:absolute;top:110px;'>" & Â						showHtmlList & "
		</ul>
    </div>
</body>
</html>"					ignoring application responses						set episodeFile to my writeCode(episodeFile, episodeText)					end ignoring				end if				set docName to letterName & ".html"				try					make new file at (azMenu) with properties {name:docName}				end try				if {exists file (docName) in azMenu} then					set dFile to file (docName) in azMenu --			-----..######...					set episodeFile to dFile as alias ---------------------------.##...........##.					set listPart1 to "<li><a href='" --------------------------.##................					set listPart6 to "'>" ----------------------------------------.##................					set listPart8 to "</a></li>" ------------------------------.##.................					set letterHtmlList to {} -----------------------------------.##..........##..					set allFiles to every file in aLetter ------------------------.######. ...					repeat with aFile in allFiles ---------------------------------------------						if name extension of aFile is "html" then							set htmlFile to name of aFile as text							set trueShowName to text 1 thru ((offset of "." in htmlFile) - 1) of htmlFile							set trueShowName to my replace_chars(trueShowName, "_", " ")							set totalList to listPart1 & "../../Movies" & "/" & azMenuName & "/" & letterName & "/" & htmlFile & listPart6 & trueShowName & listPart8							copy totalList to end of letterHtmlList						end if					end repeat					if letterName as string is "-" then						set letterName to "#" as string					end if					set episodeText to "<!Doctype html>
<head>
    <title>A Show Example</title>
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
            font-family: 'MarionRegular';
            color:#FFFFFF;
            text-decoration:none;
            background-color:rgba(0,0,0,.8);
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
            color:#708090;position:absolute;top:2;left:20px;height:100px;width:600px;;'>" & letterName & "</header>        
        <ul class='SE_nav' style='position:absolute;top:110px;'>" & Â						letterHtmlList & "
		 </ul>
    </div>
</body>
</html>"					ignoring application responses						set episodeFile to my writeCode(episodeFile, episodeText)					end ignoring				end if			end repeat			set docName to azMenuName & ".html" --------------------------------------.########.			try ----------------------------------------------------------------------------------.##.............##				make new file at (movieDir) with properties {name:docName} -----##...............##			end try ----------------------------------------------------------------------------.##................##			if {exists file (docName) in movieDir} then --------------------------------.##..............##				set dFile to file (docName) in movieDir ---------------------------------.##.............##				set episodeFile to dFile as alias -------------------------------------------.########.				set episodeText to "<!Doctype html>
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
</html>"				ignoring application responses					set episodeFile to my writeCode(episodeFile, episodeText)				end ignoring			end if		end repeat	end repeat	set allLetters to "-" & "A" & "B" & "C" & "D" & "E" & "F" & "G" & "H" & "I" & "J" & "K" & "L" & "M" & "N" & "O" & "P" & "Q" & "R" & "S" & "T" & "U" & "V" & "W" & "X" & "Y" & "Z"	set allItems to every character of allLetters as string	repeat with anItem in allItems		if createdLetters does not contain anItem then			set letterName to anItem			set docName to letterName & ".html"			try				make new file at (azMenu) with properties {name:docName}			end try			try				if {exists file (docName) in azMenu} then					set dFile to file (docName) in azMenu --				d8888					set episodeFile to dFile as alias ----------------------------d8P888  					set letterHtmlList to ""					if letterName as string is "-" then						set letterName to "#" as string					end if					set episodeText to "<!Doctype html>
<head>
    <title>A Show Example</title>
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
            font-family: 'MarionRegular';
            color:#FFFFFF;
            text-decoration:none;
            background-color:rgba(0,0,0,.8);
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
            color:#708090;position:absolute;top:2;left:20px;height:100px;width:300px;;'>" & letterName & "</header>        
        <ul class='SE_nav' style='position:absolute;top:75px;'>" & Â						letterHtmlList & "
		 </ul>
    </div>
</body>
</html>"					ignoring application responses						set episodeFile to my writeCode(episodeFile, episodeText)					end ignoring				end if -----------------------------------------------------------------------------888888888			end try		end if	end repeat ----------------------------------------------------------------------------888		end tell----------------------------(* This script will retrieve the list of tv shows on the server (using the MyVideos60.db) and build all the neccessary HTML pages for the website.  Instead of just updating the site, it rebuilds all the webpages from scratch.  It's difficult to update without rebuiding everything because many HTML pages depend upon other pages so deleting and adding only select pages will leave some web pages with dead links or new content that has no link.  If you can design a method to only update a minimal number of pages, that should speed up the update process significantly.
*)--below is the section for the new database for TV Showsset loc to space & "~/library/'application support'/xbmc/addons/Moirai_web_Builder/MyVideos60.db" & spaceset head to "sqlite3 -line" & loc & quote -- the "-line" option outputs the column data and heading one line at a time - useful for parsing the output for particular data items.set tail to quoteset All to "select c18 from episode;" --retrieves the titles from the tvshow tableset tvshowTable to do shell script head & All & tailset tvshowTable to tvshowTable as textset allPara to every paragraph in tvshowTableset newTitleList to {}repeat with aPara in allPara --loop for TV Show titles!	if (text of aPara) ­ "" then		set aTitle to text ((offset of " c18 = " in aPara) + 7) thru -1 of aPara		copy aTitle to end of newTitleList	end ifend repeatset newTitleList to my replace_chars(newTitleList, "= ", return) --creates veritcal listtell application "Finder"	set Moirai_dir to (HD_name & ":Users:" & userName & ":Library:Application Support:XBMC:addons:Moirai_web_builder:") as alias	if not (exists file ("Newtvshow_data" as string) in Moirai_dir) then		make new file at Moirai_dir with properties {name:"Newtvshow_data"}	end if	set tvshow_data to (HD_name & ":Users:" & userName & ":Library:Application Support:XBMC:addons:Moirai_web_builder:Newtvshow_data:")	my write_to_file(newTitleList, tvshow_data, false) --false will erase previous contents from the text file	set tvshow_data to tvshow_data as string	set the open_tvshow_data to open for access file tvshow_data with write permission	set newInfo to read file tvshow_data using delimiter "= "	close access the open_tvshow_data	set newInfoText to newInfo as text	--Lets add HTML pages now		set tvshow_data to (HD_name & ":Users:" & userName & ":Library:Application Support:XBMC:addons:Moirai_web_builder:Newtvshow_data:") as alias	set moiraiDir to folder of tvshow_data	set App_folder to folder ("Sites") in moiraiDir	if not (exists folder ("TV_Shows" as string) in App_folder) then --check for folders		make new folder at App_folder with properties {name:"TV_Shows"}	end if	set tvshowDir to folder ("TV_Shows" as string) in App_folder	if (count of items in tvshowDir) is greater than 1 then --clear folders		delete every item in tvshowDir	end if	if not (exists folder ("videos" as string) in App_folder) then		make new folder at App_folder with properties {name:"videos"}	end if	set videoDir to folder ("videos" as string) in App_folder	if not (exists folder ("TV_Shows" as string) in videoDir) then		make new folder at videoDir with properties {name:"TV_Shows"}	end if	set vid_TvshowDir to folder ("TV_Shows" as string) in videoDir	if (count of items in vid_TvshowDir) is greater than 1 then		delete every item in vid_TvshowDir	end if	set azMenu to make new folder at vid_TvshowDir with properties {name:"A-ZMenu"}	set azMenuName to (name of azMenu)	set oldTID to AppleScript's text item delimiters	set AppleScript's text item delimiters to return	set allContent to every text item of newInfoText	set AppleScript's text item delimiters to oldTID	set firstText to text item 1 of allContent	set firstText to my trim_line(firstText, " ", 0) --get rid of an empty space	copy firstText to text item 1 of allContent	set oldTID to AppleScript's text item delimiters	set AppleScript's text item delimiters to return	set allContent to every text item of allContent	set AppleScript's text item delimiters to oldTID	repeat with anItem in allContent		set oldTID to AppleScript's text item delimiters		set AppleScript's text item delimiters to "TV_Shows/"		set titleInfo to text item 2 of anItem		set AppleScript's text item delimiters to "/"
		set theCount to count text items of titleInfo
		if theCount is greater than 1 then			set allInfo to text item 2 of titleInfo			set AppleScript's text item delimiters to "."			set letterName to first character of allInfo as text			set letterName to my CapitalizeFirstLetter_ofEveryWord(letterName)			set 	showName to text item 1 of allInfo as text			set seasonName to text item 2 of allInfo as text			set episodeName to allInfo as text			set aLetter to make new folder at azMenu with properties {name:letterName}			set aShow to make new folder at aLetter with properties {name:showName}			set aSeason to make new folder at aShow with properties {name:seasonName}			set anEpisode to make new file at aSeason with properties {name:episodeName}
		end if	end repeat	set AppleScript's text item delimiters to oldTID		--now we'll build HTML files!	--this part is messy and complex, work here would be greatly appreciated! :-)		set azList to folders in vid_TvshowDir --changes title of each video file for later step	repeat with azMenu in azList		set azMenuName to name of azMenu		set alphaList to folders in azMenu		repeat with aLetter in alphaList			set letterName to name of aLetter			set showList to folders in aLetter			repeat with aShow in showList				set showName to name of aShow as text				set seasonList to folders in aShow				repeat with aSeason in seasonList					set seasonName to name of aSeason as text					set episodeList to every file in aSeason					repeat with anEpisode in episodeList --below changes the name						set semiEpisodeName to name of anEpisode as text						if semiEpisodeName does not end with ".nfo" then --Keeps .nfo files in their place							set theExtension to "." & name extension of anEpisode							set episodeName to text 1 thru ((offset of theExtension in semiEpisodeName) - 1) Â								of semiEpisodeName							set AppleScript's text item delimiters to "."							try								set oldLetter to letterName --test for number								set letterName to number								set numTest to true								set letterName to oldLetter							end try							if numTest is true then								set letterName to my numberCorrection(letterName) --convert number to "Num"							end if							if (exists folder (azMenuName as string) in tvshowDir) then								set alphaFolder to folder named azMenuName in tvshowDir							else								set alphaFolder to make new folder at tvshowDir with properties {name:azMenuName}							end if							if (exists folder (letterName as string) in alphaFolder) then								set letterFolder to folder named letterName in alphaFolder							else								set letterFolder to make new folder at alphaFolder with properties {name:letterName}							end if							if (exists folder (showName as string) in letterFolder) then								set showFolder to folder named showName in letterFolder							else								set showFolder to make new folder at letterFolder with properties {name:showName}							end if							if (exists folder (seasonName as string) in showFolder) then								set seasonFolder to folder named seasonName in showFolder							else								set seasonFolder to make new folder at showFolder with properties {name:seasonName}							end if							try --done to prevent duplicates from being entered								if (exists file (episodeName) in seasonFolder) then								else									move anEpisode to seasonFolder								end if							end try						end if					end repeat				end repeat			end repeat		end repeat	end repeat	set tvName to name of tvshowDir	set createdLetters to {} -- used for determining letters at the end	set azList to folders in tvshowDir --NEEDED FOR HEIRARCHY DON'T ERASE!!!	repeat with azMenu in azList		set azMenuName to name of azMenu		set letterList to folders in azMenu		repeat with aLetter in letterList			set letterName to name of aLetter			copy letterName to end of createdLetters --used for letters at the end			set showList to folders in aLetter			repeat with aShow in showList				set showName to name of aShow				set seasonList to folders in aShow				repeat with aSeason in seasonList					set seasonName to name of aSeason					set episodeList to files in aSeason					repeat with anEpisode in episodeList						if name extension of anEpisode ­ "html" then --avoid html files							set AppleScript's text item delimiters to "."							set episodeName to name of anEpisode							set origEpisodeName to episodeName --backup of the name!							set episodeName to my replace_chars(episodeName, " ", "_")							set episodeExtension to name extension of anEpisode							set episodeTitle to text 1 thru ((offset of episodeExtension in episodeName) - 1) of episodeName							set docName to episodeTitle & "html"							if name extension of anEpisode ­ "html" then --move anEpisode to vid_tvshowDir and								if {exists folder (azMenuName) in vid_TvshowDir} then --rebuild filesystem									set altMenu to folder (azMenuName) in vid_TvshowDir									if {exists folder (letterName) in altMenu} then										set altLetter to folder (letterName) in altMenu										if {exists folder (showName) in altLetter} then											set altShow to folder (showName) in altLetter											if {exists folder (seasonName) in altShow} then												set altSeason to folder (seasonName) in altShow												move anEpisode to altSeason --move to Season in vid_tvshowDir												set currentLoc to altSeason as text											else												try													set altSeason to make new folder at altShow with properties {name:seasonName}												end try												move anEpisode to altSeason												set currentLoc to altSeason as text											end if										else											try												set altShow to make new folder at altLetter with properties {name:showName}												set altSeason to make new folder at altShow with properties {name:sesonName}											end try											move anEpisode to altSeason											set currentLoc to altSeson as text										end if									else										try											set altLetter to make new folder at altMenu with properties {name:letterName}											set altShow to make new folder at altLetter with properties {name:showName}											set altSeason to make new folder at altShow with properties {name:sesonName}										end try										move anEpisode to altSeason										set currentLoc to altSeson as text									end if								else									try										set altMenu to make new folder at vid_TvshowDir with properties {name:azMenuName}										set altLetter to make new folder at altMenu with properties {name:letterName}										set altShow to make new folder at altLetter with properties {name:showName}										set altSeason to make new folder at altShow with properties {name:sesonName}									end try									move anEpisode to altSeason									set currentLoc to altSeson as text								end if							end if						end if						set parentFol to folder of tvshowDir --used as a delimiter! (mwahahaha)						set parentName to name of parentFol						set pathName to currentLoc as text						set pathName to my replace_chars(pathName, ":", "_") --change ":" to "_"						set pathName to my replace_chars(pathName, " ", "_") --change " " to "_"						set AppleScript's text item delimiters to parentName --this all points						set almostLoc to text item 2 of pathName --to the file for the HTML						set AppleScript's text item delimiters to origEpisodeName --coding						set nearlyLoc to text item 1 of almostLoc & origEpisodeName						set fileLoc to text ((offset of ":" in nearlyLoc) + 1) thru -1 of nearlyLoc						set AppleScript's text item delimiters to {""}						try --prevents duplicates from being written----------------------------...d888							make new file at aSeason with properties {name:docName} --d8888						end try --													888						if {exists file (docName) in aSeason} then --						888							set dFile to file (docName) in aSeason --						888							set episodeFile to dFile as alias --							888							--Code for episode html text file!---						   	888							--you can modify this for your own coding needs of course        8888888							set episodeText to "<!DOCTYPE html>
<html>															   
    <head>														
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
          <source src='../../../../../" & fileLoc & "' type='video/mp4'/>
          <source src='../../../../../" & fileLoc & "' type='video/ogg'/>
          <source src='../../../../../" & fileLoc & "' type='video/webm' />
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
</html>"							ignoring application responses								set episodeFile to my writeCode(episodeFile, episodeText)							end ignoring							----------------------------------------------------------------------.d8888b.							set AppleScript's text item delimiters to "" -----------------d88P  Y88b						end if -------------			---                        -------------                 888					end repeat -------------------------------   	-- --------               ---           .d88P					set docName to seasonName & ".html" ------		   -------------     .od888PI					set altShowName to showName as text -----------    -------------    d88PI					set altShowName to my replace_chars(altShowName, "_", " ") --888I 					set altSeasonName to seasonName as text --------------------------8888888888 					set altSeasonName to my replace_chars(altSeasonName, "_", " ")					try						make new file at aShow with properties {name:docName}					end try					if {exists file (docName) in aShow} then						set dFile to file (docName) in aShow						set episodeFile to dFile as alias						set listPart1 to "<li><a href='" --auto generate HTML lists						set listPart7 to "'>"						set listPart9 to "</a></li>"						set seasonHtmlList to {}						set allFiles to every file in aSeason						repeat with aFile in allFiles							if name extension of aFile is "html" then								set htmlFile to name of aFile as text								set trueEpisodeName to text 1 thru ((offset of "." in htmlFile) - 1) of htmlFile								set trueEpisodeName to my replace_chars(trueEpisodeName, " ", "_")								set totalList to listPart1 & "../../../../TV_Shows" & "/" & azMenuName & "/" & letterName & "/" & showName & "/" & seasonName & "/" & htmlFile & listPart7 & trueEpisodeName & listPart9								copy totalList to end of seasonHtmlList							end if						end repeat						set episodeText to "<!Doctype html>
<head>
    <title>A Show Example</title>
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
            font-size: 19px;
        }

        .SE_nav li a {
            font-family: 'MarionRegular';
            color:#FFFFFF;
            text-decoration:none;
            background-color:rgba(0,0,0,.8);
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
        <header id='showTitle' style=' font-size:50px;color:#708090;'>" & altShowName & "</header>
        <header id='seasonTitle' style='font-size:30px;color:#708090;'>" & altSeasonName & "</header>
        <ul class='SE_nav'>" & Â							seasonHtmlList & "
		</ul>
    </div>
</body>
</html>"						ignoring application responses							set episodeFile to my writeCode(episodeFile, episodeText)						end ignoring					end if				end repeat				set docName to showName & ".html"				try					make new file at aLetter with properties {name:docName}				end try				if {exists file (docName) in aLetter} then					set dFile to file (docName) in aLetter					set episodeFile to dFile as alias --							.d8888b.					set listPart1 to "<li><a href='" --auto generate HTML lists-------d88P  Y88b					set listPart6 to "'>" --											  .d88P					set listPart8 to "</a></li>" --									8888I					set showHtmlList to {} --										  IY8b.					set allFiles to every file in aShow --							888    888					repeat with aFile in allFiles --								Y88b  d88P						if name extension of aFile is "html" then ---				 IY8888PI							set htmlFile to name of aFile as text							set trueSeasonName to text 1 thru ((offset of "." in htmlFile) - 1) of htmlFile							set trueSeasonName to my replace_chars(trueSeasonName, "_", " ")							set totalList to listPart1 & "../../../TV_Shows" & "/" & azMenuName & "/" & letterName & "/" & showName & "/" & htmlFile & listPart6 & trueSeasonName & listPart8							copy totalList to end of showHtmlList						end if					end repeat					set episodeText to "<!Doctype html>
<head>
    <title>A Show Example</title>
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
            font-family: 'MarionRegular';
            color:#FFFFFF;
            text-decoration:none;
            background-color:rgba(0,0,0,.8);
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
            color:#708090;position:absolute;top:2;left:20px;height:100px;width:300px;;'>" & altShowName & "</header>        
        <ul class='SE_nav' style='position:absolute;top:75px;'>" & Â						showHtmlList & "
		</ul>
    </div>
</body>
</html>"					ignoring application responses						set episodeFile to my writeCode(episodeFile, episodeText)					end ignoring				end if			end repeat			set docName to letterName & ".html"			try				make new file at (azMenu) with properties {name:docName}			end try			if {exists file (docName) in azMenu} then				set dFile to file (docName) in azMenu --				d8888				set episodeFile to dFile as alias ----------------------------d8P888  				set listPart1 to "<li><a href='" --------------------------d8P 888				set listPart6 to "'>" ---------------------------------------d8P  888				set listPart8 to "</a></li>" ----------------------------d88   888 				set letterHtmlList to {} ---------------------------------8888888888				set allFiles to every file in aLetter ------------------------     888 				repeat with aFile in allFiles ------------------------------------888					if name extension of aFile is "html" then						set htmlFile to name of aFile as text						set trueShowName to text 1 thru ((offset of "." in htmlFile) - 1) of htmlFile						set trueShowName to my replace_chars(trueShowName, "_", " ")						set totalList to listPart1 & "../../TV_Shows" & "/" & azMenuName & "/" & letterName & "/" & htmlFile & listPart6 & trueShowName & listPart8						copy totalList to end of letterHtmlList					end if				end repeat				if letterName as string is "-" then					set letterName to "#" as string				end if				set episodeText to "<!Doctype html>
<head>
    <title>A Show Example</title>
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
            font-family: 'MarionRegular';
            color:#FFFFFF;
            text-decoration:none;
            background-color:rgba(0,0,0,.8);
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
            color:#708090;position:absolute;top:2;left:20px;height:100px;width:300px;;'>" & letterName & "</header>        
        <ul class='SE_nav' style='position:absolute;top:75px;'>" & Â					letterHtmlList & "
		 </ul>
    </div>
</body>
</html>"				ignoring application responses					set episodeFile to my writeCode(episodeFile, episodeText)				end ignoring			end if -----------------------------------------------------------------------------888888888		end repeat ----------------------------------------------------------------------------888		set docName to azMenuName & ".html" ------------------------------------------888		try --------------------------------------------------------------------------------------8888888b.			make new file at (tvshowDir) with properties {name:docName} ----------IY88b		end try -------------------------------------------------------------------------------------------888		if {exists file (docName) in tvshowDir} then -------------------------------Y88b  d88P 			set dFile to file (docName) in tvshowDir ----------------------------------IY8888PI			set episodeFile to dFile as alias			set episodeText to "<!Doctype html>
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
</html>"			ignoring application responses				set episodeFile to my writeCode(episodeFile, episodeText)			end ignoring		end if --the section below makes blank pages for unused letters	end repeat	set allLetters to "-" & "A" & "B" & "C" & "D" & "E" & "F" & "G" & "H" & "I" & "J" & "K" & "L" & "M" & "N" & "O" & "P" & "Q" & "R" & "S" & "T" & "U" & "V" & "W" & "X" & "Y" & "Z"	set allItems to every character of allLetters as string	repeat with anItem in allItems		if createdLetters does not contain anItem then			set letterName to anItem			set docName to letterName & ".html"			try				make new file at (azMenu) with properties {name:docName}			end try			try				if {exists file (docName) in azMenu} then					set dFile to file (docName) in azMenu --				d8888					set episodeFile to dFile as alias ----------------------------d8P888  					set letterHtmlList to ""					if letterName as string is "-" then						set letterName to "#" as string					end if					set episodeText to "<!Doctype html>
<head>
    <title>A Show Example</title>
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
            font-family: 'MarionRegular';
            color:#FFFFFF;
            text-decoration:none;
            background-color:rgba(0,0,0,.8);
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
            color:#708090;position:absolute;top:2;left:20px;height:100px;width:300px;;'>" & letterName & "</header>        
        <ul class='SE_nav' style='position:absolute;top:75px;'>" & Â						letterHtmlList & "
		 </ul>
    </div>
</body>
</html>"					ignoring application responses						set episodeFile to my writeCode(episodeFile, episodeText)					end ignoring				end if -----------------------------------------------------------------------------888888888			end try		end if	end repeat ----------------------------------------------------------------------------888	end tell----------------------------on writeCode(episodeFile, episodeText) --don't even ask me why this section works...	set bar to open for access episodeFile	close access bar	try		write episodeText to episodeFile		close access episodeFile		open for access episodeFile	end try	try		close access episodeFile	end try	return episodeFileend writeCodeon replace_chars(this_text, search_string, replacement_string)	set AppleScript's text item delimiters to the search_string	set the item_list to every text item of this_text	set AppleScript's text item delimiters to the replacement_string	set this_text to the item_list as string	set AppleScript's text item delimiters to ""	return this_textend replace_charson numberCorrection(theName)	global theNumbers, numberLabel	set oldTID to AppleScript's text item delimiters	repeat with i from 1 to count of theNumbers		set AppleScript's text item delimiters to item i of theNumbers		set theTextBits to text items of theName		set AppleScript's text item delimiters to item 1 of numberLabel		set theName to theTextBits as text	end repeat	set AppleScript's text item delimiters to oldTID	return theNameend numberCorrectionon write_to_file(this_data, target_file, append_data)	try		set the target_file to the target_file as string		set the open_target_file to open for access file target_file with write permission		if append_data is false then set eof of the open_target_file to 0		write this_data to the open_target_file starting at eof		close access the open_target_file		return true	on error		try			close access file target_file		end try		return false	end tryend write_to_fileon trim_line(firstText, trim_chars, trim_indicator)	-- 0 = beginning, 1 = end, 2 = both	set x to the length of the trim_chars	-- TRIM BEGINNING	if the trim_indicator is in {0, 2} then		repeat while firstText begins with the trim_chars			try				set firstText to characters (x + 1) thru -1 of firstText as string			on error				-- the text contains nothing but the trim characters				return ""			end try		end repeat	end if	-- TRIM ENDING	if the trim_indicator is in {1, 2} then		repeat while firstText ends with the trim_chars			try				set firstText to characters 1 thru -(x + 1) of firstText as string			on error				-- the text contains nothing but the trim characters				return ""			end try		end repeat	end if	return firstTextend trim_lineon CapitalizeFirstLetter_ofEveryWord(InputString)	set newString to ""	repeat with currentWord in (every word of InputString)		do shell script "ruby -e 'puts \"" & currentWord & "\".capitalize'"		set newString to newString & result & " "	end repeat	return (characters 1 through -2 of newString as text)end CapitalizeFirstLetter_ofEveryWordset sites_folder to (HD_name & ":Users:" & userName & ":Library:Application Support:XBMC:addons:Moirai_web_builder:Sites:") as aliastell application "Finder"	set frontPage to make new file at sites_folder with properties {name:"Index.html"}	set frontPage to frontPage as text	set theText to "<!DOCTYPE html>
<html lang='en'>
  <head>
    <meta content='text/html; charset=utf-8' http-equiv='Content-Type'>
    <title>Main Page</title>
    <style>
        body {
           background-color:#000000;
        }

        <!-- Main Page -->
         #video_background {
            top:0;
            bottom:0;
            left:0;
            right:0;
            z-index:-10;
          position:fixed;
          height:100%;
          width:100%;
          background-color:#000000;
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
          right:10px;
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
      
      #mainMenu > ul {
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
 z-index:1;
}
#mainMenu:hover > ul {
  visibility:visible;
  opacity:1;
  -webkit-transition-delay:0s;
  -moz-transition-delay:0s;
  -ms-transition-delay:0s;
  -o-transition-delay:0s;
  transition-delay:0s;
 z-index:1;
  }

       </style>
</head>
<body>
    <div class='fl'>
<div  id='mainMenu'>
<ul>
    <a href='TV_Shows/a-zmenu.html'>TV Shows</a>
    <a href='Movies/a-zmenu.html'>Movies</a>
    <a href='#'>Files</a>
</ul>
</div>
    <video id='video_background' preload='auto|metadata' height='100%'
     width='100%' autoplay>
     <source src='videos/poo.mov' type='video/webm' />
        <source src='videos/poo.mov' type='video/mp4' />
        <source src='videos/poo.mov' type='video/ogg' />
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
</html>"	set the open_frontPage to open for access file frontPage with write permission	write theText to file frontPage	close access open_frontPageend tellactivate application "Terminal"tell application "System Events"	tell process "Terminal"		keystroke "rsync -ave ssh \"/users/Edmundo/library/application support/xbmc/addons/Moirai_web_builder/sites/movies/\" edmundo@192.168.0.11:/home/edmundo/Desktop/Sites/movies/" & return		delay 10
		beep		keystroke "rsync -ave ssh \"/users/Edmundo/library/application support/xbmc/addons/Moirai_web_builder/sites/tv_shows/\" edmundo@192.168.0.11:/home/edmundo/Desktop/Sites/tv_shows/" & return		delay 10
		beep
		keystroke "rsync -ave ssh \"/users/Edmundo/library/application support/xbmc/addons/Moirai_web_builder/sites/index.html\" edmundo@192.168.0.11:/home/edmundo/Desktop/Sites/videos/" & return
		delay 10
	
	end tell	tell application "Finder" to quit application "Terminal"
	
	end telltell application "Finder"	set HD_name to get name of startup disk	set userName to do shell script "w -h | sort -u -t' ' -k1,1 | while read user etc
do
  homedir=$(dscl . -read /Users/$user NFSHomeDirectory | cut -d' ' -f2)
  echo $user
done"	set sitesFolder to HD_name & ":Users:" & userName & ":Library:Application Support:XBMC:addons:Moirai_web_builder:Sites:" as alias	delete every item in sitesFolderend tell