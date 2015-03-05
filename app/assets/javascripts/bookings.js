$(document).ready(function(){
  $('.js-bookme').on('click', function(){
    var field_id = $(this).parent().data('field_id');
    var schedule_id = $(this).parent().data('schedule_id');
    var user_id = $(this).parent().data('user_id');

    $.ajax({
      type: 'POST',
      url: "/bookings",
      data: {
        booking: {
          field_id: field_id,
          schedule_id: schedule_id,
          user_id : user_id}
        }
  }).done(function() {
      console.log("done");
    });
  });
});
