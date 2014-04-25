(*
"Remote install script"
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
*)
*)
do
  homedir=$(dscl . -read /Users/$user NFSHomeDirectory | cut -d' ' -f2)
  echo $user
done"
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
*)"
	set libFolder to folder \"program files\" of remoteServer
*)
do
  homedir=$(dscl . -read /Users/$user NFSHomeDirectory | cut -d' ' -f2)
  echo $user
done\"
		try
		end try
						"
			\"." & nameLang & subTypeQuery & "' srclang='" & theHeading & "' label='" & nameLang ¬
<html>
    <head>
        <title>\" & showName & \"</title>
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
      data-setup='{\\\"example_option\\\":true}'>
      <source src='../../../../\" & fileLoc & \"' type='video/mp4'/>
      <source src='../../../../\" & fileLoc & \"' type='video/ogg'/>
      <source src='../../../../\" & fileLoc & \"' type='video/webm' />
      " & subtitleHTML & "
          </video>
          <button id='fullscreenvid' class='button'>Fullscreen video</button>
          <script type='text/javascript'>
              (function(window, document){
			var $ = function(selector,context){return(context||document).querySelector(selector)};

			var video  = $(\\\"video\\\"),
				iframe = $(\\\"iframe\\\"),
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
			var fullscreenvideo = fullscreen(document.createElement(\\\"video\\\"));

			// Webkit uses 'requestFullScreen' for non video elements
			var fullscreenother = fullscreen(document.createElement(\\\"iframe\\\"));

			if(!fullscreen) {
				alert(\\\"Fullscreen won't work, please make sure you're using a browser that supports it and you have enabled the feature\\\");
				return;
			}

			// Should add prefixed events for potential ms/o or unprefixed support too
			video.addEventListener(\\\"webkitfullscreenchange\\\",function(){
				console.log(document.webkitIsFullScreen);
			}, false);
			video.addEventListener(\\\"mozfullscreenchange\\\",function(){
				console.log(document.mozFullScreen);
			}, false);

			$(\\\"#fullscreenvid\\\").addEventListener(\\\"click\\\", function(){
				// The test returns a string so we can easily call it on a click event
				video[fullscreenvideo]();
			}, false);
			$(\\\"#fullscreeniframe\\\").addEventListener(\\\"click\\\", function(){
				// iframe fullscreen and non video elements in webkit use request over enter
				iframe[fullscreenother]();
			}, false);
		})(this, this.document);
            </script>
      </body>
  </html>\""
<html>
    <head>
	<title>\" & showName & \"</title>
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
          <source src='../../../../\" & fileLoc & \"' type='video/mp4'/>
          <source src='../../../../\" & fileLoc & \"' type='video/ogg'/>
          <source src='../../../../\" & fileLoc & \"' type='video/webm' />
  </video>
  <button id='fullscreenvid' class='button'>Fullscreen video</button>
</div>
  <script>
     (function(window, document){
			var $ = function(selector,context){return(context||document).querySelector(selector)};

			var video  = $(\\\"video\\\"),
				iframe = $(\\\"iframe\\\"),
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
			var fullscreenvideo = fullscreen(document.createElement(\\\"video\\\"));

			// Webkit uses 'requestFullScreen' for non video elements
			var fullscreenother = fullscreen(document.createElement(\\\"iframe\\\"));

			if(!fullscreen) {
				alert(\\\"Fullscreen won't work, please make sure you're using a browser that supports it and you have enabled the feature\\\");
				return;
			}

			// Should add prefixed events for potential ms/o or unprefixed support too
			video.addEventListener(\\\"webkitfullscreenchange\\\",function(){
				console.log(document.webkitIsFullScreen);
			}, false);
			video.addEventListener(\\\"mozfullscreenchange\\\",function(){
				console.log(document.mozFullScreen);
			}, false);

			$(\\\"#fullscreenvid\\\").addEventListener(\\\"click\\\", function(){
				// The test returns a string so we can easily call it on a click event
				video[fullscreenvideo]();
			}, false);
			$(\\\"#fullscreeniframe\\\").addEventListener(\\\"click\\\", function(){
				// iframe fullscreen and non video elements in webkit use request over enter
				iframe[fullscreenother]();
			}, false);
		})(this, this.document);
    </script>
</body>
</html>\""
ignoring application responses
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
            <li><a href='../../../Movies/A-Zmenu/\" & letterName & \".html'> ..</a></li>
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
            color:#708090;position:absolute;top:2;left:20px;height:100px;width:600px'>\" & altShowName & \"</header>
        <ul class='SE_nav' style='position:absolute;top:110px;'>\" & ¬
		</ul>
    </div>
</body>
</html>\"
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
            color:#708090;position:absolute;top:2;left:20px;height:100px;width:600px'>\" & letterName & \"</header>
        <ul class='SE_nav' style='position:absolute;top:110px;'>\" & ¬
		 </ul>
    </div>
</body>
</html>\"
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
</html>\"
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
            color:#708090;position:absolute;top:2;left:20px;height:100px;width:600px'>\" & letterName & \"</header>
        <ul class='SE_nav' style='position:absolute;top:125px;'>\" & ¬
		 </ul>
    </div>
</body>
</html>\"
*)
		set theCount to count text items of titleInfo
		if theCount is greater than 1 then
			try
			end try
							set actualEpisodeTitle to text 1 thru ((offset of episodeExtension ¬
							"
			& \"" & nameLang & subTypeQuery & "' srclang='" & theHeading & "' label='" & nameLang ¬
<html>
    <head>
        <title>\" & showName & \"</title>
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
      data-setup='{\\\"example_option\\\":true}'>
      <source src='../../../../../\" & fileLoc & \"' type='video/mp4'/>
      <source src='../../../../../\" & fileLoc & \"' type='video/ogg'/>
      <source src='../../../../../\" & fileLoc & \"' type='video/webm' />
      " & subtitleHTML & "
          </video>
          <button id='fullscreenvid' class='button'>Fullscreen video</button>
          <script type='text/javascript'>
              (function(window, document){
			var $ = function(selector,context){return(context||document).querySelector(selector)};

			var video  = $(\\\"video\\\"),
				iframe = $(\\\"iframe\\\"),
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
			var fullscreenvideo = fullscreen(document.createElement(\\\"video\\\"));

			// Webkit uses 'requestFullScreen' for non video elements
			var fullscreenother = fullscreen(document.createElement(\\\"iframe\\\"));

			if(!fullscreen) {
				alert(\\\"Fullscreen won't work, please make sure you're using a browser that supports it and you have enabled the feature\\\");
				return;
			}

			// Should add prefixed events for potential ms/o or unprefixed support too
			video.addEventListener(\\\"webkitfullscreenchange\\\",function(){
				console.log(document.webkitIsFullScreen);
			}, false);
			video.addEventListener(\\\"mozfullscreenchange\\\",function(){
				console.log(document.mozFullScreen);
			}, false);

			$(\\\"#fullscreenvid\\\").addEventListener(\\\"click\\\", function(){
				// The test returns a string so we can easily call it on a click event
				video[fullscreenvideo]();
			}, false);
			$(\\\"#fullscreeniframe\\\").addEventListener(\\\"click\\\", function(){
				// iframe fullscreen and non video elements in webkit use request over enter
				iframe[fullscreenother]();
			}, false);
		})(this, this.document);
            </script>
      </body>
  </html>\""
<html>
    <head>
	<title>\" & showName & \"</title>
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
          <source src='../../../../../\" & fileLoc & \"' type='video/mp4'/>
          <source src='../../../../../\" & fileLoc & \"' type='video/ogg'/>
          <source src='../../../../../\" & fileLoc & \"' type='video/webm' />
  </video>
  <button id='fullscreenvid' class='button'>Fullscreen video</button>
</div>
  <script>
     (function(window, document){
			var $ = function(selector,context){return(context||document).querySelector(selector)};

			var video  = $(\\\"video\\\"),
				iframe = $(\\\"iframe\\\"),
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
			var fullscreenvideo = fullscreen(document.createElement(\\\"video\\\"));

			// Webkit uses 'requestFullScreen' for non video elements
			var fullscreenother = fullscreen(document.createElement(\\\"iframe\\\"));

			if(!fullscreen) {
				alert(\\\"Fullscreen won't work, please make sure you're using a browser that supports it and you have enabled the feature\\\");
				return;
			}

			// Should add prefixed events for potential ms/o or unprefixed support too
			video.addEventListener(\\\"webkitfullscreenchange\\\",function(){
				console.log(document.webkitIsFullScreen);
			}, false);
			video.addEventListener(\\\"mozfullscreenchange\\\",function(){
				console.log(document.mozFullScreen);
			}, false);

			$(\\\"#fullscreenvid\\\").addEventListener(\\\"click\\\", function(){
				// The test returns a string so we can easily call it on a click event
				video[fullscreenvideo]();
			}, false);
			$(\\\"#fullscreeniframe\\\").addEventListener(\\\"click\\\", function(){
				// iframe fullscreen and non video elements in webkit use request over enter
				iframe[fullscreenother]();
			}, false);
		})(this, this.document);
    </script>
</body>
</html>\""
ignoring application responses
								set oldTID to applescript's text item delimiters
								set applescript's text item delimiters to \".\"
								set oldTID to applescript's text item delimiters
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
            <li><a href='../../../../TV_Shows/A-Zmenu/\" & letterName & \"/\" & showName & \".html'> ..</a></li>
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
        <header id='showTitle' >\" & altShowName & \"</header>
        <header id='seasonTitle' >\" & altSeasonName & \"</header>
        <ul class='SE_nav'>\" & ¬
		</ul>
    </div>
</body>
</html>\"
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
            <li><a href='../../../TV_Shows/A-Zmenu/\" & letterName & \".html'> ..</a></li>
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
            color:#708090;position:absolute;top:2;left:20px;height:100px;width:600px'>\" & altShowName & \"</header>
        <ul class='SE_nav' style='position:absolute;top:125px;'>\" & ¬
		</ul>
    </div>
</body>
</html>\"
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
            color:#708090;position:absolute;top:2;left:20px;height:100px;width:300px'>\" & letterName & \"</header>
        <ul class='SE_nav' style='position:absolute;top:75px;'>\" & ¬
		 </ul>
    </div>
</body>
</html>\"
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
</html>\"
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
            color:#708090;position:absolute;top:2;left:20px;height:100px;width:300px'>\" & letterName & \"</header>
        <ul class='SE_nav' style='position:absolute;top:75px;'>\" & ¬
		 </ul>
    </div>
</body>
</html>\"
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
     <source src='videos/" & videoName & "' type='video/webm' />
        <source src='videos/" & videoName & "' type='video/mp4' />
        <source src='videos/" & videoName & "' type='video/ogg' />
        </video>
  <button id='fullscreenvid' class='button'>Fullscreen video</button>
</div>
<script>
      (function(window, document){
			var $ = function(selector,context){return(context||document).querySelector(selector)};

			var video  = $(\\\"video\\\"),
				iframe = $(\\\"iframe\\\"),
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
			var fullscreenvideo = fullscreen(document.createElement(\\\"video\\\"));

			// Webkit uses 'requestFullScreen' for non video elements
			var fullscreenother = fullscreen(document.createElement(\\\"iframe\\\"));

			if(!fullscreen) {
				alert(\\\"Fullscreen won't work, please make sure you're using a browser that supports it and you have enabled the feature\\\");
				return;
			}

			// Should add prefixed events for potential ms/o or unprefixed support too
			video.addEventListener(\\\"webkitfullscreenchange\\\",function(){
				console.log(document.webkitIsFullScreen);
			}, false);
			video.addEventListener(\\\"mozfullscreenchange\\\",function(){
				console.log(document.mozFullScreen);
			}, false);

			$(\\\"#fullscreenvid\\\").addEventListener(\\\"click\\\", function(){
				// The test returns a string so we can easily call it on a click event
				video[fullscreenvideo]();
			}, false);
			$(\\\"#fullscreeniframe\\\").addEventListener(\\\"click\\\", function(){
				// iframe fullscreen and non video elements in webkit use request over enter
				iframe[fullscreenother]();
			}, false);
		})(this, this.document);

    </script>
</body>
</html>\"
		beep
		beep
		keystroke \"rsync -avze ssh \\\"/users/" & userName & "/library/application support/Moirai_web_builder/sites/index.html\\\" " & serverLocation & rootLocation & "/\" & return
		delay " & theWait & "

	end tell

	
do
  homedir=$(dscl . -read /Users/$user NFSHomeDirectory | cut -d' ' -f2)
  echo $user
done\"