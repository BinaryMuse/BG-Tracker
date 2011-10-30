jQuery ->
  $(".realm_box").click ->
    $(this).parents("form").submit()
