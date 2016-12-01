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
//= require ckeditor/init
//= require_tree .


$(function() {
  if ($.browser.msie && $.browser.version.substr(0,1)<7)
  {
    $('li').has('ul').mouseover(function(){
        $(this).children('ul').css('visibility','visible');
        }).mouseout(function(){
        $(this).children('ul').css('visibility','hidden');
        })
  }
  document.getElementsByTagName('body')[0].style.backgroundColor = '#ecf0f1';
}); 


$(document).on('page:load', function () {
  if(document.URL.includes("colaboradores_2")) {
    document.getElementsByClassName("two")[0].style.backgroundColor = "#66cccc";
  }
});


 



 

