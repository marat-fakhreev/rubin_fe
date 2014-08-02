App.Views = App.Views or {}

class App.Views.HeaderView
  constructor: (@$el) ->
    @_bindUi()
    @_bindEvents()

  _bindUi: ->
    @ui =
      matchInfoContainer: @$el.find('.match-inner')
      coverageContainer: @$el.find('.match-information')
      collapseButton: @$el.find('.collapse-button')
      fullCoverageButton: @$el.find('.show-full-coverage')
      teamButton: @$el.find('.current-match-table-right .team-item')
      team: @$el.find('.current-match-table-right .team')

  _bindEvents: ->
    @ui.collapseButton.on('click', @onClickLoadMore)
    @ui.fullCoverageButton.on('click', @onShowFullCoverage)
    @ui.teamButton.on('click', @onShowTeamList)

  onClickLoadMore: =>
    @ui.collapseButton.toggleClass('clicked')
    @ui.matchInfoContainer.toggleClass('full')

  onShowFullCoverage: (event) =>
    event.stopPropagation()
    @onClickLoadMore() unless @ui.collapseButton.hasClass('clicked')
    @ui.coverageContainer.toggleClass('full')

  onShowTeamList: (event) =>
    self = $(event.currentTarget)
    index = self.index()

    @ui.team.slideUp 300, =>
      @ui.team.eq(index).slideDown(300)
