// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready(function() {

  // for the user to edit their profile
  $('.edit').on('click', function(e) {
    $(this).blur();
    $('.focus').focus();
    $('.link-right').css('display', 'block');
    $('.submit-button').css('display', 'block');
    $('.hide_on_edit').css('display', 'none');
    $('.show_on_edit').toggle('fade', 1000);
  });

  $('.link-right').on('click', function(e) {
    $('link-right').css('display', 'none');
    $('.submit-button').css('display', 'none');
    $('.hide_on_edit').css('display', 'block');
    $('.show_on_edit').css('display', 'none');
  });
// to open comment boxes
  $('.comment_brand').on('click', function(e) {
    e.preventDefault();
    $(this).after($('.comment_form_brand'));
    $('.comment_form_brand').toggle('blind', 1000);
  });

  $('.comment_resume').on('click', function(e) {
    e.preventDefault();
    $(this).after($('.comment_form_resume'));
    $('.comment_form_resume').toggle('blind', 1000);
  });

  $('.comment_portfolio').on('click', function(e) {
    e.preventDefault();
    $(this).after($('.comment_form_portfolio'));
    $('.comment_form_portfolio').toggle('blind', 1000);
  });

  $('.comment_linkedin').on('click', function(e) {
    e.preventDefault();
    $(this).after($('.comment_form_linkedin'));
    $('.comment_form_linkedin').toggle('blind', 1000);
  });

  $('.comment_jobtracker').on('click', function(e) {
    e.preventDefault();
    $(this).after($('.comment_form_jobtracker'));
    $('.comment_form_jobtracker').toggle('blind', 1000);
  });

// to cancel comments
  $('.cancel_brand').on('click', function(e) {
    e.preventDefault();
    $(this).parent().toggle('blind', 1000);
  });
  
  $('.cancel_portfolio').on('click', function(e) {
    e.preventDefault();
    $(this).parent().toggle('blind', 1000);
  });

  $('.cancel_jobtracker').on('click', function(e) {
    e.preventDefault();
    $(this).parent().toggle('blind', 1000);
  });

  $('.cancel_resume').on('click', function(e) {
    e.preventDefault();
    $(this).parent().toggle('blind', 1000);
  });

  $('.cancel_linkedin').on('click', function(e) {
    e.preventDefault();
    $(this).parent().toggle('blind', 1000);
  });

// to show accordian comments to user
  // brand
  $('.reviews_brand').on('click', function(e) {
    e.preventDefault();
    $('.close_brand').after($('.accordion_brand'));
    $('.accordion_brand').toggle('blind', 1000);
    $('.close_brand').css('display', 'block');
    $(this).css('display', 'none');
  });

  $('.close_brand').on('click', function(e) {
    e.preventDefault();
    $('.accordion_brand').toggle('blind', 1000);
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
    $('.close_resume').after($('.accordion_resume'));
    $('.accordion_resume').toggle('blind', 1000);
    $('.close_resume').css('display', 'block');
    $(this).css('display', 'none');
  });

  $('.close_resume').on('click', function(e) {
    e.preventDefault();
    $('.accordion_resume').toggle('blind', 1000);
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
    $('.close_portfolio').after($('.accordion_portfolio'));
    $('.accordion_portfolio').toggle('blind', 1000);
    $('.close_portfolio').css('display', 'block');
    $(this).css('display', 'none');
  });

  $('.close_portfolio').on('click', function(e) {
    e.preventDefault();
    $('.accordion_portfolio').toggle('blind', 1000);
    $('.reviews_portfolio').css('display', 'block');
    $(this).css('display', 'none')
  });

  $( function() {
    $('.accordion_portfolio').accordion({
      heightStyle: 'content'
    });
  });

  // linkedin //
  $('.reviews_linkedin').on('click', function(e) {
    e.preventDefault();
    $('.close_linkedin').after($('.accordion_linkedin'));
    $('.accordion_linkedin').toggle('blind', 1000);
    $('.close_linkedin').css('display', 'block');
    $(this).css('display', 'none');
  });

  $('.close_linkedin').on('click', function(e) {
    e.preventDefault();
    $('.accordion_linkedin').toggle('blind', 1000);
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
    $('.close_jobtracker').after($('.accordion_jobtracker'));
    $('.accordion_jobtracker').toggle('blind', 1000);
    $('.close_jobtracker').css('display', 'block');
    $(this).css('display', 'none');
  });

  $('.close_jobtracker').on('click', function(e) {
    e.preventDefault();
    $('.accordion_jobtracker').toggle('blind', 1000);
    $('.reviews_jobtracker').css('display', 'block');
    $(this).css('display', 'none')
  });

  $( function() {
    $('.accordion_jobtracker').accordion({
      heightStyle: 'content'
    });
  });

  // for admin editing user, students/index page //
  $('.student').on('click', function(e) {
    $('.hide_admin').css('display', 'block');
  });

  $('.admin').on('click', function(e) {
    $('.hide_admin').css('display', 'none');
  });

});