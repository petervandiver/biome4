

$(function() {
  $('a#toggle-cycle-sov').click(function(event){
    event.preventDefault();
    $('div#cycle-jobs').toggle();
  });
}); 

$(function() {
  $('a#toggle-cycle-stored-material').click(function(event){
    event.preventDefault();
    $('div#cycle-stored-material').toggle();
  });
}); 

$(function() {
  $('a#toggle-cycle-documents').click(function(event){
    event.preventDefault();
    $('div#cycle-documents').toggle();
  });
}); 
