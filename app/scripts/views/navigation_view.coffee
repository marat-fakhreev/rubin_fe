App.Views = App.Views or {}

class App.Views.NavigationView
  ui: {}

  constructor: (@$el, @$header) ->
    @_bindUi()
    @_bindEvents()

  _bindUi: ->
    @ui =
      navMenuItem: @$el.find('nav li')
      dropDownMenu: @$header.find('.dropdown-menu-container')
      menu: @$header.find('.menu')
      secondMenuItem: @$header.find('.menu-item')
      secondMenuItemContent: @$header.find('.menu-item-content')

  _bindEvents: ->
    @ui.navMenuItem.on('click', @onClickNavMenuItem)
    @ui.secondMenuItem.on('click', @onClickSecondMenuItem)

  onClickNavMenuItem: (event) =>
    event.stopPropagation()
    self = $(event.currentTarget)

    index = self.index()
    self.siblings().removeClass('active')
    @ui.dropDownMenu.removeClass('active')
    @ui.menu.removeClass('active')

    if self.hasClass('active')
      self.removeClass('active')
    else
      self.addClass('active')
      @ui.dropDownMenu.addClass('active')
      @ui.menu.eq(index).addClass('active')

  onClickSecondMenuItem: (event) =>
    event.stopPropagation()
    self = $(event.currentTarget)

    @ui.secondMenuItemContent.removeClass('active')
    self.find('.menu-item-content').addClass('active')
