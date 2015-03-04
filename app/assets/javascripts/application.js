//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require_tree .
$(document).ready(function(){
  $('.js-bookme').each(function(){
    $(this).on('click', function(){
      var field_id = $(this).parent().data('field_id');
      var schedule_id = $(this).parent().data('schedule_id');
      var user_id = $(this).parent().data('user_id');

      $.ajax({
        type: 'POST',
        url: "/bookings",
        data: $.param({
          booking: {
            field_id: user_id,
            schedule_id: schedule_id,
            user_id : user_id
          }
        })
    }).done(function() {
        console.log("done");
      });
    });
  });
});
