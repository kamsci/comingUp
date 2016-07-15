// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready(function() {
  console.log('edit ready');

  $('.edit').on('click', function(e){
    console.log('I\'ve been clicked!');
    $('.update').removeAttr('readonly');
    $('.submit-button').css('display', 'block');
    $('.update').css('background-color', 'grey').css('color', 'white');
    $('.branding').css('background-color', 'grey');
  });
});