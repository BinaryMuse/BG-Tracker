jQuery ->
  admin = $('body').data('admin')
  $(".realm_box").click (e) ->
    if admin
      $(this).parents("form").submit()
    else
      e.preventDefault()
