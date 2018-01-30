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
//= require rails-ujs
//= require turbolinks
//= require_tree .

//= require jquery
//= require jquery_ujs
//= require materialize

$(document).on('turbolinks:load', function() {
  
  // ########## MATERIALIZE FUNCTIONS ########## //
  $('.parallax').parallax();
  $('ul.tabs').tabs();
  $('select').material_select();
  
  $('.activate-side').sideNav({
    menuWidth: 300, // Default is 300
    edge: 'right', // Choose the horizontal origin
    closeOnClick: true, // Closes side-nav on <a> clicks, useful for Angular/Meteor
    draggable: true, // Choose whether you can drag to open on touch screens,
  });
  
  $('.datepicker').pickadate({
    min: true,
    selectMonths: true, // Creates a dropdown to control month
    selectYears: 15, // Creates a dropdown of 15 years to control year,
    today: 'Today',
    clear: 'Clear',
    close: 'Ok',
    closeOnSelect: true, // Close upon selecting a date,
    onSet: function(date) {
      console.log(new Date(date.select));
    }
  });
  
  $('.time_selector').dropdown({
    // Forces drop-up menu, remove if not required
    belowOrigin: true
  }
);

$('.time_selector').change(function() {
  // console.log($('#booking_time').val());
  
  $.ajax({
    url: '/bookings',
    type: 'post',
    data: $('#booking_time').val(),
    success: function(data) { // console.log(data); // data is @matched_booking_by_time obj, manipulate the data
      
      var yolo82 = JSON.parse(data);
      console.log(yolo82); //This will show array of bookings where time = selected time
      
      $(yolo82).each(function(index) {
        // If booking table has this.service_id && this.date && this.time,
        // disable service checkbox where the service == service_id
        console.log(this.date);
        
      });
      
      
      
      
    },
    error: function(data) {
      console.log(data);
    }
  });
});

// ########## OTHER FUNCTIONS ########## //

// $(".service_checkbox").change(function(){
//   if(this.checked) {
//     console.log("This is checked");
// 
//   }
//   else if (!this.checked) {
//     console.log("This is unchecked");
//   }
// });

});
