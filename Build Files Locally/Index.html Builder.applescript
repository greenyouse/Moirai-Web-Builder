(*
"Index.html Builder"
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
*)display dialog "Please select your frontpage video" & return & return & "(keep the video file in the videos folder)"set frontPageVideo to choose filetell application "Finder"	set videoName to name of frontPageVideoend telldisplay dialog "Please select a location for your Index.html file"set theDrop to choose foldertell application "Finder"	set frontPage to make new file at theDrop with properties {name:"Index.html"}	set frontPage to frontPage as text	set theText to "<!DOCTYPE html>
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
</html>"	set the open_frontPage to open for access file frontPage with write permission	write theText to file frontPage	close access open_frontPageend tell
