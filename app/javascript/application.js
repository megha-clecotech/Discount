// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import jQuery from "jquery";
window.$ = window.jQuery = jQuery;
 console.log($);

import Rails from "@rails/ujs";
Rails.start();

$(function() {
   $('[data-js-like-link]').on("click" ,function(event){
      // if(like.clicked == true)
      // {
      //    $(this).css('color','red');
      //    link.clicked = false;
      // }
      // else
      // {
      //    $(this).css('color','cyan');
      // }
      alert('You clicked the Hide link');
     event.preventDefault();
   });
}) 
import * as bootstrap from "bootstrap"

