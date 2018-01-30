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
  var selected_date;
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
      selected_date = (new Date(date.select).toISOString().slice(0, -14));
      // Uncaught range error because onset detects all selections within pickadate interface, so if you click next month 
      // there is no 'date' that you've selected, hence you cant run all the following functions
    }
  });
  
  $('.time_selector').dropdown({
    // Forces drop-up menu, remove if not required
    belowOrigin: true
  }
);

$('.time_selector').change(function() {  
  parsedData = {time : $('#booking_time').val(), date : selected_date}
  // console.log(passedData);
  
  $.ajax({
    url: '/bookings',
    type: 'post',
    data: parsedData,
    success: function(data) { // console.log(data); // data is @matched_booking (time = selected time, date = selected date)
      // console.log(data);
      $('.service_checkbox').prop( "disabled", false );
      
      var yolo82 = JSON.parse(data); //This will show array of bookings where time = selected time
      $(yolo82).each(function(index) {
      // yolo82 is array of objects where (date = selected date && time = selected time)      
      var checkbox_id = "checkbox" + (this.service_id).toString();
      $('#' + checkbox_id).prop( "disabled", true );
      
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
