jQuery(document).ready(function(){
  // TODO this
  // jQuery('form.validate').validate();
  // as a generic form validator is now working, no errors in the console
  jQuery('form#new_idea').validate();
  jQuery('form#edit_idea').validate();
  jQuery('form#new_user').validate();
  jQuery('form#new_user_session').validate();
  jQuery('a.link_dummy').click(function(){
    alert('Not implemented yet.');
  });
});