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
$(document).ready(function() {
  // $(".link1").text(function(){
  //     return $(this).text().replace("fear","BLUE");
  // });

   $("p").each(function () {
     $(this).replaceWith("<li>" + $(this).html() + "</li>");
    });
   // $("http://").each(function () {
   //    $(this).replaceWith("<a href='");
   // });
   // $(".html").each(function () {
   //    $(this).replaceWith("' />");
   $(".link1").each(function () {
      var a = $(this).next('div'); // Find the next div -- should be a link
      $(this).wrap('<a href="' + a.text() + '"></a>'); // And wrap text in an anchor tag
    });

 });