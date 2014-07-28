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
      secondMenuLink: @$header.find('.menu-item-link')
      secondMenuContent: @$header.find('.menu-item-content')

  _bindEvents: ->
    @ui.navMenuItem.on('click', @onClickNavMenuItem)
    @ui.secondMenuLink.on('mouseover', @onClickSecondMenuItem)

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
    content = $(event.currentTarget).siblings('.menu-item-content')

    @ui.secondMenuContent.removeClass('active').slideUp 300, ->
      content.slideDown 300, ->
        content.addClass('active')
