var job_fields = $('<%= j render('job_fields') %>');

$(function() {
	$('#new-job-link').click(function(event){
    event.preventDefault();
    $('#initial-job-fields').after(job_fields);
  });
}); 



