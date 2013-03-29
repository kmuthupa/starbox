$(document).ready(function(){
  $('.select-beverage').click(function(){
    // show processing modal
    $('#process_modal').modal({
      backdrop: 'static',
      show: true
    });
    
    // post vend request
    $.ajax({
      type: "POST",
      url: $(this).attr('url'),
      data: { },
      success: function(response) {
        // display result
        $('.vend_result').html(response).show();
        //hide processing modal
        $('#process_modal').modal('hide');
      },
      error: function(response) {
        // display error
        $('.vend_result').html('Sorry! There was a problem processing your request. Try again later.').show();
        //hide processing modal
        $('#process_modal').modal('hide');
      }
    });
  });
});