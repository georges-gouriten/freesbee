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

  $(".categories-filter li").click(function() {
    var category_class = $(this).attr("class").match(/(category-\w+)/)[1];

    if ($(this).hasClass("active")) {
      deactivateCategory(category_class)
    } else {
      activateCategory(category_class);
    }
  })
  // Select all to start
  $(".categories-filter li").each(function() {
    var category_class = $(this).attr("class").match(/(category-\w+)/)[1];
    
    activateCategory(category_class);
  });
  // TODO
  //layoutOffersListing();
});

function deactivateCategory(category_class) {
  $(".categories-filter li." + category_class).removeClass("active");
  var link_target = $(".offers-listing .col a img." + category_class).parent();
  $(link_target).removeClass("active");
  $(link_target).hide(500, function() {
    // Hide columns if they are empty
    $(".offers-listing .col").each(function() {
      if ($(this).find("a:visible").length <= 0) {
        $(this).hide(500);
      }
    });
  });
}

function activateCategory(category_class) {
  $(".categories-filter li." + category_class).addClass("active");
  var link_target = $(".offers-listing .col a img." + category_class).parent();
  $(link_target).addClass("active");
  
  var parent_col = $(link_target).parents().find(".col");
  if ($(parent_col).is(":hidden")) {
    $(parent_col).show(300);
  }
  $(link_target).show(500);
}

function layoutOffersListing() {
  var colMargin = getMarginVal(".offers-listing .col", "margin-right");
  var colWidth = $(".offers-listing .col").outerWidth() + colMargin;
  var numCols = $(".offers-listing .col").length;
  var sidePadding = getMarginVal("#wrapper #available-freesbees", "margin-right") + 
                    getMarginVal("#wrapper #available-freesbees", "margin-left");
  var offersListingWidth = colWidth * numCols + sidePadding;
  console.log(offersListingWidth);
  if (offersListingWidth > window.innerWidth) {
    console.log(window.innerWidth);
    // if images are > window width, increase size of width
  }
}

function getMarginVal(sel, marginName) {
  return parseInt($(sel).css(marginName).match(/(\d+)\w+/)[1])
}