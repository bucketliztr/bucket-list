# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$('#add_list_item').on('click', function() { 
    $('#list_items').append('<div class="list_item"><input type="text" name="list_item[]"><button class="remove">x</button></div>');
    return false; //prevent form submission
});

$('#list_items').on('click', '.remove', function() {
    $(this).parent().remove();
    return false; //prevent form submission
});