$(document).ready ->
  
  initForm = () ->
    $('#new_user').submit(submitUserHandler)
   
  submitUserHandler = () -> 
    $form = $('#new_user')
    action = $form.data('action')
    $.post(action, $form.serialize(), createUserHandler)
    return false
    
  createUserHandler = (data) ->
    $('#content').html(data)
    initForm()  
  
  initForm()
