// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require jquery-ui
//= require autocomplete-rails
//= require bootstrap-sprockets
//= require turbolinks
//= require bootstrap
//= require_tree .

jQuery(document).ready(function(){
    // jQuery('.nav li').on('click', function(){ 
    //     jQuery('.nav li.active').removeClass();
    //     jQuery(this).addClass('active'); 
        
    // });
    
    jQuery(function(){
      function stripTrailingSlash(str) {
        if(str.substr(-1) == '/') {
          return str.substr(0, str.length - 1);
        }
        return str;
      }
    
      var url = window.location.pathname;  
      var activePage = stripTrailingSlash(url);
      console.log(activePage);
    
      jQuery('.nav li a').each(function(){  
        var currentPage = stripTrailingSlash(jQuery(this).attr('href'));
    
        if (activePage == currentPage) {
          jQuery(this).parent().addClass('active'); 
        } 
      });
    });
    
});