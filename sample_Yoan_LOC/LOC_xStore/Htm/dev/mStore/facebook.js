// INITIALIZE FACEBOOK SDK ASYNCHRONOUSLY
/* 
Reference: https://developers.facebook.com/docs/facebook-login

To Remove Facebook from current application. this code should be deactivated by:
	- Comment all this file;
	- Remove all the code completly
	- Remove <script id="facebook" type="text/javascript" src="facebook.js"></script> in index.html (in same folder)
*/
window.fbAsyncInit = function() {
	FB.init({
		appId      : '430603111043525', // App ID here
		xfbml      : true,
		version    : 'v2.9'
	});
	FB.AppEvents.logPageView();
};

(function(d, s, id){
	var js, fjs = d.getElementsByTagName(s)[0];
	if (d.getElementById(id)) {return;}
	js = d.createElement(s); js.id = id;
	js.src = "//connect.facebook.net/en_US/sdk.js";
	fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));
