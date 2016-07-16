// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready(function() {

  $('.edit').on('click', function(e) {
    $(this).blur();
    $('.focus').focus();
    $('.submit-button').css('display', 'block');
    $('.update').css('background-color', 'grey').css('color', 'white');
    $('.branding').css('background-color', 'grey');
    $('.hide_on_edit').css('display', 'none');
    $('.show_on_edit').css('display', 'block');
  });
});