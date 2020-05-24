//http://jsfiddle.net/kelunik/pkjze6e6/42/
var node = document.getElementById("page");
var longpress = false;
var presstimer = null;
var longtarget = null;
var root = location.protocol + '//' + location.host;

var cancel = function(e) {
    if (presstimer !== null) {
        clearTimeout(presstimer);
        presstimer = null;
    }
    
    this.classList.remove("longpress");
};

var click = function(e) {
    if (presstimer !== null) {
        clearTimeout(presstimer);
        presstimer = null;
    }
    
    this.classList.remove("longpress");
    
    if (longpress) {
        return false;
    }
    
    //alert("press");
	//keyEvents.js
	addEventListeners();
};

var start = function(e) {
    //console.log(e);
	
    if (e.type === "click" && e.button !== 0) {
        return;
    }
    
    longpress = false;
    
    this.classList.add("longpress");
    
    presstimer = setTimeout(function() {
        //alert("long click");
		addEventListeners();
		//launchAS();
        longpress = true;
    }, 1000);
    
    return false;
};

function launchAS() {
	
/* 	var isMobile = document.getElementById("isMobile").value;
	var jswmstr = "";
	if (isMobile == "true" || isMobile == true) {
		jswmstr = "'" + "/tools?FUNC=WIDGET&t=MiniBrowserGet" + "', 500, 300, 'middle', 'middle', {title: '" + "Mini Browser" + "', icon: '/static/img/jswm-web.png'}";
	} else {
		//jswmstr = "'" + "/tools?FUNC=MIRROR2" + "', 500, 300, 'middle', 'middle', {title: '" + "Mirror" + "', icon: '/static/img/jswm-web.png'}";
		jswmstr = "'" + "/tools?FUNC=ALL_DESKTOPS" + "', 500, 300, 'middle', 'middle', {title: '" + "All Desktops" + "', icon: '/static/img/jswm-web.png'}";
	} */
/* 	var jswmstr = "'" + "/tools?FUNC=ALL_DESKTOPS" + "', 500, 300, 'middle', 'middle', {title: '" + "All Desktops" + "', icon: '/static/img/jswm-web.png'}";
	eval('windowManager.openURI(' + jswmstr + ');'); */

	//var tdesk = prompt("Please enter desktop name", "TempDesktop");
	//if (tdesk != null) {
	//window.open("/uwm?u=" + tdesk, "_blank");
	//window.open("/chat-bubble/ulapphbot.html", "_blank");
    /*
	var url = "";
	var aUser = document.getElementById("aUser").value;
	var sa = aUser.indexOf("---");
	var UID = "";
	if (sa > 0) {
		var SPS = aUser.split("---");
		UID = SPS[0];
	} else {
		UID = aUser;
	}
	if (urlParams["u"] != "") {
		url = "/chat-bubble/ulapphbot.html"+"?u="+urlParams["u"] +"&UID="+UID;
	} else {
		url = "/chat-bubble/ulapphbot.html"+"?UID="+UID;
	}
	window.open(url, "_blank");
    */
	/*var jswmstr = "'" + "/uwm?u=" + tdesk + "', 500, 300, 'middle', 'middle', {title: '" + "Mirror" + "', icon: '/static/img/jswm-web.png'}";
	eval('windowManager.openURI(' + jswmstr + ');');
	
	var aSound = document.createElement('audio');
	soundManager.createSound({
		id: 'waterMob',
		volume: 75,
		url: root + "/static/audio/water-drop.ogg"
	});
	playSound('waterMob');*/
	//} else {
	//	alert("Please enter desktop name");
	//}
    if (localStorage[root+'isStreaming'] == 'Y') {
	    localStorage[root+'isStreaming'] = 'N';
        alertify.success("Streaming has been turned off!");
        //return wallpaper
        //src = "/static/img/LP_DeepField_NASA.gif";
        //document.getElementById('page').style.backgroundImage = "url(" + src + ")";
    } else {
        localStorage[root+'isStreaming'] = 'Y';
        alertify.success("Streaming has been turned on!");
    }
};

node.addEventListener("mousedown", start);
node.addEventListener("touchstart", start);
node.addEventListener("click", click);
node.addEventListener("mouseout", cancel);
node.addEventListener("touchend", cancel);
node.addEventListener("touchleave", cancel);
node.addEventListener("touchcancel", cancel);

//for mobile only
document.addEventListener('touchstart', handleTouchStart, false);        
document.addEventListener('touchmove', handleTouchMove, false);

var xDown = null;                                                        
var yDown = null;

function getTouches(evt) {
  return evt.touches ||             // browser API
         evt.originalEvent.touches; // jQuery
}                                                     

function handleTouchStart(evt) {
    const firstTouch = getTouches(evt)[0];                                      
    xDown = firstTouch.clientX;                                      
    yDown = firstTouch.clientY;                                      
};                                                

function handleTouchMove(evt) {
    if ( ! xDown || ! yDown ) {
        return;
    }

    var xUp = evt.touches[0].clientX;                                    
    var yUp = evt.touches[0].clientY;

    var xDiff = xDown - xUp;
    var yDiff = yDown - yUp;

    if ( Math.abs( xDiff ) > Math.abs( yDiff ) ) {/*most significant*/
        if ( xDiff > 0 ) {
            /* left swipe */ 
			//alertify.log("Swiped left...");
			scanCctvStream("L");
        } else {
            /* right swipe */
			scanCctvStream("R");
			//alertify.log("Swiped right...");
        }                       
    } else {
        if ( yDiff > 0 ) {
            /* up swipe */ 
			scanCctvStream("C");
			//alertify.log("Swiped up...");
        } else { 
            /* down swipe */
			scanCctvStream("O");
			//alertify.log("Swiped down...");
        }                                                                 
    }
    /* reset values */
    xDown = null;
    yDown = null;                                             
};