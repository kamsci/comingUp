// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/


$('#myTabs a').click(function (e) {
  e.preventDefault()
  $(this).tab('show')
});

$( function() {
    $( "#datepicker" ).datepicker();
  } );

console.log('the main.js page');