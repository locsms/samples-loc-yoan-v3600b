// INITIALIZE GOOGLE ENVIRONMENT
/*
Reference: https://developers.google.com/identity/sign-in/web/devconsole-project

To Remove Google from current application. this code should be deactivated by:
	- Comment all this file;
	- Remove all the code completly
	- Remove <script id="google" type="text/javascript" src="google.js"></script> in index.html (in same folder)
*/

// var GoogleClientId = '####'; // Your Google clientId goes here.
var GoogleClientId = "####"; // Your Google clientId goes here. 
var GoogleTrackingId = 'UA-100964783-1'; // Your Google Analytics tracking ID goes here


// EXECUTE ON LOAD
(function(d, s, id) {
// Init Google login Api
if (GoogleClientId != '####') {
	if (window.console) console.log('loading: Google Api');
	GoogleLoadScript("https://apis.google.com/js/client.js", GoogleAfterLoad);
	GoogleInit();
}
// Init Google Analytics Api
if (GoogleTrackingId != '####') {
	if (window.console) console.log('loading: Google Analytics');
	GoogleAnalyticsInit(window,document,'script','https://www.google-analytics.com/analytics.js','GoogleAnalytics');
	GoogleAnalytics('create',GoogleTrackingId,'auto');
}
}());

// INIT GOOGLE API
function GoogleInit() {
	window.onload = function() {
		gapi.client.load('plus', 'v1',function(){});
	};
};

// TO LOAD A SCRIPT DIRECTLY FROM A JAVASCRIPT FILE
function GoogleLoadScript(url, completeCallback) {
	var script = document.createElement('script'), done = false,
		head = document.getElementsByTagName("head")[0];

	script.src = url;
	script.onload = script.onreadystatechange = function(){
		if ( !done && (!this.readyState || this.readyState == "loaded" || this.readyState == "complete") ) {
			done = true;
			completeCallback();

			// IE memory leak
			script.onload = script.onreadystatechange = null;
			head.removeChild( script );
		}
	};
	head.appendChild(script);
}

function GoogleAfterLoad() {
// alert('Script has been loaded.');
};

// GOOGLE ANALYTICS
function GoogleAnalyticsInit(i,s,o,g,r,a,m) {
	i['GoogleAnalyticsObject']=r;
	i[r]=i[r]||function() {
			(i[r].q=i[r].q||[]).push(arguments)
		},i[r].l=1*new Date();
	a=s.createElement(o),
	m=s.getElementsByTagName(o)[0];
	a.async=1;
	a.src=g;
	m.parentNode.insertBefore(a,m)
};
