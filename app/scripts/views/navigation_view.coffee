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
      signInFormContainer: @$el.find('.sign-in-form')
      signInForm: @$el.find('#sign_in_form')
      submitButton: @$el.find('.submit-button')
      error: @$el.find('.error')
      fillFormError: @$el.find('.fill-form-error')
      login: @$el.find('.login')

  _bindEvents: ->
    @ui.navMenuItem.on('click', @onClickNavMenuItem)
    @ui.secondMenuLink.on('mouseover', @onClickSecondMenuItem)
    @ui.submitButton.on('click', @onSubmitSignInForm)
    @ui.login.on('click', @onShowSignInForm)

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

  onSubmitSignInForm: (event) =>
    event.preventDefault()
    isFilled = true

    @ui.signInForm.find('.field').each (index, item) ->
      isFilled = false if $(item).val() is ''

    if isFilled
      @ui.signInForm.submit()
    else
      @ui.fillFormError.addClass('visible')

  onShowSignInForm: =>
    @_clearAllErrors()

    @ui.signInFormContainer.fadeIn 0, =>
      @ui.signInFormContainer.toggleClass('visible')

  _clearAllErrors: ->
    @ui.error.removeClass('visible')
