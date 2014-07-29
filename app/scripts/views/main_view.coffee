App.Views = App.Views or {}

class App.Views.MainView
  HEIGHT = 1270

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

    if self.hasClass('clicked')
      @ui.grid.animate('max-height': '10000px', 300)
    else
      @ui.grid.animate('max-height': '1270px', 300)
