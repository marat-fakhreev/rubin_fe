App.Layouts = App.Layouts or {}

class App.Layouts.Main
  ui: {}

  constructor: ->
    @_bindUi()
    @_bindViews()

  _bindUi: ->
    @ui =
      navigation: $('.navigation')
      header: $('.header')
      main: $('.main')

  _bindViews: ->
    new App.Views.NavigationView(@ui.navigation, @ui.header)
    new App.Views.HeaderView(@ui.header)
    new App.Views.MainView(@ui.main)
