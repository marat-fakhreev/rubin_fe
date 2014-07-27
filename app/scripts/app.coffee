App =
  Layouts: {}
  Views: {}
  Models: {}

$ ->
  $(document).on 'click', (event) ->
    $('*').removeClass('active')

  new App.Layouts.Main()
