// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready(function() {

  $('#myTabs a').click(function (e) {
    e.preventDefault()
    $(this).tab('show')
  });

  $(function() {
    $('#flash').delay(500).fadeIn('normal', function() {
      $(this).delay(1500).fadeOut();
    });
  });

  $(function () {
    $('[data-toggle="tooltip"]').tooltip()
  });


}); //end doc ready