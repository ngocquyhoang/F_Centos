// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
// Javascript
$( document ).ready(function() {
});
// resize set value
$( window ).resize(function() {
	SetWidthValue();
	SetContentHeightValue();
});


function SetWidthValue () {
	var width_vale = $(window).width();
 	 $(".main-content").width(width_vale - 45);
};
// function set height content value
function SetContentHeightValue () {
	var height_value = $(window).height();
	$("section .content-section").height(height_value - 110);
};

function ShowSocialView () {
	$(".footer .social-connect ul li").each(function() {
		$(this).click(function() {
			var AttrName = $(this).attr('title');
			$(".footer .social-view").toggle("slide", {direction:'right'} , "easeOutQuint ", 500);
			switch (AttrName){
			   case "Github": {SetSocialViewDetails("http://ngocquyhoang.github.io/", "assets/github.jpg", AttrName, "Connect us on <br />" + AttrName)};
			   break;
			   case "Facebook": {SetSocialViewDetails("https://www.facebook.com/ngocquyhoang.93", "assets/facebook.jpg", AttrName, "Connect us on <br />" + AttrName)};
			   break;				   
			   case "Goolge Plus": {SetSocialViewDetails("https://www.google.com", "assets/google-plus.jpg", AttrName, "Connect us on <br />" + AttrName)};
			   break;
			   default: {SetSocialViewDetails("https://twitter.com/malloryandbob", "assets/twitter.jpg", AttrName, "Connect us on <br />" + AttrName)};
			};
		});
	});
	$(".close-social-views-imgages").click(function() {
		$(".footer .social-view").hide("slide", {direction:'right'} , "easeOutQuint ", 500);
	});
};
function SetSocialViewDetails (link_href, image_src, title_des, button_des) {
	$(".footer .social-view ul li figure figcaption a").attr("href", link_href);
	$(".footer .social-view ul li figure div img").attr("src", image_src);
	$(".footer .social-view h3").html(title_des);
	$(".footer .social-view a").html(button_des);
}
function SigninForm () {
	$("section.home .content-section .home-content .signin-form-box").show("slide", {direction:'up'} , "easeOutQuint ", 1000);
	var width_vale = $(window).width();
	$("section.home .content-section .home-content .signin-form-box .signin-form").css("margin-left",width_vale/2 - 355);
	$("section.home .content-section .home-content .signin-form-box .signin-form").show("slide", {direction:'up'} , "easeOutQuint ", 1000);
}
