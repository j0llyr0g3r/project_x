jQuery(document).ready(function(){
  jQuery('form#new_idea').submit(function(){
    alert('boho');
    jQuery(this).validate();
  });
});