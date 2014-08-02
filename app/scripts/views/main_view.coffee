App.Views = App.Views or {}

class App.Views.MainView
  constructor: (@$el) ->
    @_bindUi()
    @_bindEvents()

  _bindUi: ->
    @ui =
      loadMore: @$el.find('.load-more')
      grid: @$el.find('ul.grid')

  _bindEvents: ->
    @ui.loadMore.on('click', @onClickLoadMore)

  onClickLoadMore: (event) =>
    self = $(event.currentTarget)
    self.toggleClass('clicked')
    @ui.grid.toggleClass('full')
