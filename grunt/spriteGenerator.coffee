module.exports = (grunt) ->
  development:
    src: [
      '<%= grunt.appDir %>/images/sprite/**/*'
    ]
    spritePath: '<%= grunt.appDir %>/stylesheets/sprite.png'
    stylesheetPath: '<%= grunt.appDir %>/stylesheets/sprite.styl'
    layout: 'vertical'
    compositor: 'gm'
