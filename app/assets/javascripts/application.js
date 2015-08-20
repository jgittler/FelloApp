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
//= require twitter/bootstrap
//= require turbolinks
//= require_tree .

$('.carousel').carousel({
  interval: false
}) 

$(document).ready(function(){
  $("form").on("ajax:success", function(){
    $(this).find('input[name="email"]').val('');
    $('.alert').text('Thank You');
    $('.alert').show();
    setTimeout(function(){
      $('.alert').hide();
    }, 2000);
  });
});
