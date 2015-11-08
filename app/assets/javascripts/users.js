(function() {
  $(function() {
    $("#conference").on("change", function() {
      console.log('changed');
      $.get('/teams', {
        conference_id: $(this).val()
      }).always(function(data) {
        $("#user_team_id").html(data.responseText)
      });
    });
  });

}).call(this);
