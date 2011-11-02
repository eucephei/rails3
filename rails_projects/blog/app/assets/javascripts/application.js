// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

$(function() {
  $("#article_published_on").datepicker();

  if ($("#comments").length > 0) {
    setTimeout(updateComments, 10000);
  }
});

function updateComments () {
  var article_id = $("#article").attr("data-id");
  if ($(".comment").length > 0) {
    var after = $(".comment:last-child").attr("data-time");
  } else {
    var after = "0";
  }

  $.getScript("/comments.js?article_id=" + article_id + "&after=" + after)
  setTimeout(updateComments, 10000);
}