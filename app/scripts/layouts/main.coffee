App.Layouts = App.Layouts or {}

class App.Layouts.Main
  constructor: ->
    @bindUi()
    @bindViews()

  bindUi: ->
    console.log 'layouts ui binded'

  bindViews: ->
    console.log 'views binded'
