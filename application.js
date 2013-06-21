$(document).ready(function() {
  var pusher = new Pusher('fd0c03cc1e75152c6be6');
  var channel = pusher.subscribe('my_channel');

  $('form').on('submit', function(e){
    e.preventDefault();
    $.ajax({
      url: '/deedeedee',
      method: 'post',
      data: $(this).serialize()
    });
  });

  channel.bind('my_event', function(data) {
    $(".comments").append("<p>" + data.message + "</p");
  });
});
