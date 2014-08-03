App =
  Layouts: {}
  Views: {}
  Models: {}

$ ->
  $(document).on 'click', (event) ->
    $('*').removeClass('active').removeClass('hidden')

  new App.Layouts.Main()
