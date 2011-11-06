// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

$(document).ready(function() {
  
  $('#new_offer_form').modal();

  // Select all to start
  
  $(".categories-filter li").click(function() {
    var category_class = $(this).attr("class").match(/(category-\w+)/)[1];

    if ($(this).hasClass("active")) {
      deactivateCategory(category_class)
    } else {
      activateCategory(category_class);
    }
  })

});

function deactivateCategory(category_class) {
  $(".categories-filter li." + category_class).removeClass("active");
  $(".offers-listing .col a img." + category_class).parent().removeClass("active");
}

function activateCategory(category_class) {
  $(".categories-filter li." + category_class).addClass("active");
  $(".offers-listing .col a img." + category_class).parent().addClass("active");
}