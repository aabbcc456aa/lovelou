//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require jquery-ui
//= require jquery.fancybox
//= require jquery.fancybox-buttons
//= require jquery.fancybox-thumbs
//= require jquery.kwicks
//= require jquery-ui-1.8.18.custom


$().ready(function() {  
    $('.kwicks').kwicks({  
        max : 205,  
        spacing : 5  
    });  
});  
    

$(function() {
  $('.alert-message .close').live('click', function(e){
    $(this).parent().slideUp('fast', function() {$(this).remove()});
  });
})

$(document).ajaxSend(function(e, xhr, options) {
  var token = $("meta[name='csrf-token']").attr("content");
  xhr.setRequestHeader("X-CSRF-Token", token);
});

  