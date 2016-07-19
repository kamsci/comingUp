// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready(function() {

// for the user to edit their profile
  $('.edit').on('click', function(e) {
    $(this).blur();
    $('.focus').focus();
    $('.submit-button').css('display', 'block');
    $('.update').css('background-color', 'grey').css('color', 'white');
    $('.branding').css('background-color', 'grey');
    $('.hide_on_edit').css('display', 'none');
    $('.show_on_edit').css('display', 'block');
  });

// to open comment boxes
  $('.comment_brand').on('click', function(e) {
    e.preventDefault();
    $(this).after($('.comment_form_brand'));
    $('.comment_form_brand').css('display', 'block');
  });

  $('.comment_resume').on('click', function(e) {
    e.preventDefault();
    $(this).after($('.comment_form_resume'));
    $('.comment_form_resume').css('display', 'block');
  });

  $('.comment_portfolio').on('click', function(e) {
    e.preventDefault();
    $(this).after($('.comment_form_portfolio'));
    $('.comment_form_portfolio').css('display', 'block');
  });

  $('.comment_linkedin').on('click', function(e) {
    e.preventDefault();
    $(this).after($('.comment_form_linkedin'));
    $('.comment_form_linkedin').css('display', 'block');
  });

  $('.comment_jobtracker').on('click', function(e) {
    e.preventDefault();
    $(this).after($('.comment_form_jobtracker'));
    $('.comment_form_jobtracker').css('display', 'block');
  });

// to cancel comments
  $('.cancel_brand').on('click', function(e) {
    e.preventDefault();
    $(this).parent().css('display', 'none');
  });
  
  $('.cancel_portfolio').on('click', function(e) {
    e.preventDefault();
    $(this).parent().css('display', 'none');
  });

  $('.cancel_jobtracker').on('click', function(e) {
    e.preventDefault();
      $(this).parent().css('display', 'none');
  });

  $('.cancel_resume').on('click', function(e) {
    e.preventDefault();
    $(this).parent().css('display', 'none');
  });

  $('.cancel_linkedin').on('click', function(e) {
    e.preventDefault();
    $(this).parent().css('display', 'none');
  });

// to show comments
  // brand
  $('.reviews_brand').on('click', function(e) {
    e.preventDefault();
    $('.accordion_brand').css('display', 'block');
    $('.close_brand').css('display', 'block');
    $(this).css('display', 'none');
  });

  $('.close_brand').on('click', function(e) {
    e.preventDefault();
    $('.accordion_brand').css('display', 'none');
    $('.reviews_brand').css('display', 'block');
    $(this).css('display', 'none')
  });

  $( function() {
    $('.accordion_brand').accordion({
      heightStyle: 'content'
    });
  });

  // resume
  $('.reviews_resume').on('click', function(e) {
    e.preventDefault();
    $('.accordion_resume').css('display', 'block');
    $('.close_resume').css('display', 'block');
    $(this).css('display', 'none');
  });

  $('.close_resume').on('click', function(e) {
    e.preventDefault();
    $('.accordion_resume').css('display', 'none');
    $('.reviews_resume').css('display', 'block');
    $(this).css('display', 'none')
  });

 $( function() {
    $('.accordion_resume').accordion({
      heightStyle: 'content'
    });
  });

 // portfolio
   $('.reviews_portfolio').on('click', function(e) {
    e.preventDefault();
    $('.accordion_portfolio').css('display', 'block');
    $('.close_portfolio').css('display', 'block');
    $(this).css('display', 'none');
  });

  $('.close_portfolio').on('click', function(e) {
    e.preventDefault();
    $('.accordion_portfolio').css('display', 'none');
    $('.reviews_portfolio').css('display', 'block');
    $(this).css('display', 'none')
  });

  $( function() {
    $('.accordion_portfolio').accordion({
      heightStyle: 'content'
    });
  });

  // linkelinkedin$('.reviews_linkedin').on('click', function(e) {
  $('.reviews_linkedin').on('click', function(e) {
    e.preventDefault();
    $('.accordion_linkedin').css('display', 'block');
    $('.close_linkedin').css('display', 'block');
    $(this).css('display', 'none');
  });

  $('.close_linkedin').on('click', function(e) {
    e.preventDefault();
    $('.accordion_linkedin').css('display', 'none');
    $('.reviews_linkedin').css('display', 'block');
    $(this).css('display', 'none')
  });
   $( function() {
    $('.accordion_linkedin').accordion({
      heightStyle: 'content'
    });
  });

   // jobtracker
  $('.reviews_jobtracker').on('click', function(e) {
    e.preventDefault();
    $('.accordion_jobtracker').css('display', 'block');
    $('.close_jobtracker').css('display', 'block');
    $(this).css('display', 'none');
  });

  $('.close_jobtracker').on('click', function(e) {
    e.preventDefault();
    $('.accordion_jobtracker').css('display', 'none');
    $('.reviews_jobtracker').css('display', 'block');
    $(this).css('display', 'none')
  });

    $( function() {
    $('.accordion_jobtracker').accordion({
      heightStyle: 'content'
    });
  });

});