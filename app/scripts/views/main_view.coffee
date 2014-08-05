App.Views = App.Views or {}

class App.Views.MainView
  COMMENTS_COUNT = 2

  CHARACTES_COUNT = 400

  constructor: (@$el) ->
    @_bindUi()
    @_bindEvents()

    @_initComments()

  _bindUi: ->
    @ui =
      loadMoreNews: @$el.find('.load-more-news')
      loadMoreComments: @$el.find('.load-more-comments')
      grid: @$el.find('ul.grid')
      comments: @$el.find('.comments-container')
      commentsList: @$el.find('.comments-container ul')
      commentsForm: @$el.find('.comments-container form')
      commentsSubmit: @$el.find('.comments-container .submit-button')
      commentsItem: @$el.find('.comments-container ul > li')
      commentTextfield: @$el.find('.comment-text-field')
      charactersCount: @$el.find('.characters-count')

  _bindEvents: ->
    @ui.loadMoreNews.on('click', @onClickLoadMoreNews)
    @ui.loadMoreComments.on('click', @onClickLoadMoreComments)
    @ui.commentTextfield.on('keyup', @onCalculateLettersCount)
    @ui.commentsSubmit.on('click', @onSubmitCommentForm)

  onClickLoadMoreNews: (event) =>
    self = $(event.currentTarget)
    self.toggleClass('clicked')
    @ui.grid.toggleClass('full')

  onSubmitCommentForm: =>
    if @ui.commentTextfield.val().length < 10
      alert 'This comment is too short'
    else
      @ui.commentsForm.submit()

  onCalculateLettersCount: =>
    length = @ui.commentTextfield.val().length
    @ui.charactersCount.html(CHARACTES_COUNT - length)

  onClickLoadMoreComments: (event) =>
    self = $(event.currentTarget)
    self.toggleClass('clicked')

    if self.hasClass('clicked')
      @ui.commentsList.animate('height': @commentsAllHeight, 300)
    else
      @ui.commentsList.animate('height': @commentsHeight, 300)

  _initComments: ->
    @commentsHeight = 0
    @commentsAllHeight = 0
    length = @ui.commentsItem.length

    for index in [0...length]
      commentHeight = @ui.commentsItem.eq(index).height() + 60
      @commentsHeight += commentHeight if index < COMMENTS_COUNT
      @commentsAllHeight += commentHeight

    @ui.commentsList.css('height': @commentsHeight)
