




  $('a#remove-job-form').on('click', function(){
    $(this).closest('div').remove();
  });





$('#multiSubmit').on('click', function() {
 $("#new_job").trigger('submit.rails');
});


//$(function() {
// $("#multiSubmit").click( function() {
//  $("#new_job").each(function(i, item) {
//      $(item).trigger('submit.rails');
//   });
// });
//});

