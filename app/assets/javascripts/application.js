// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .
/*global $*/

var minCount = 1;
var maxCount = 6;

$(function(){
  $('#demo-plus').on('click', function(){
    var inputCount = $('#demo-area .unit').length;
    if (inputCount < maxCount){
      var element = $('#demo-area .unit:last-child').clone(true);
      var inputList = element[0].querySelectorAll('input[type="text"]');
      for (var i = 0; i < inputList.length; i++) {
        inputList[i].value = "";
      }
      $('#demo-area .unit').parent().append(element);
    }
  });
  $('.demo-minus').on('click', function(){
    var inputCount = $('#demo-area .unit').length;
    if (inputCount > minCount){
      $(this).parents('.unit').remove();
    }
  });
});