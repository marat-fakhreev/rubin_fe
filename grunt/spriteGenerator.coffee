module.exports = (grunt) ->
  development:
    src: [
      '<%= grunt.appDir %>/images/**/*'
    ]
    spritePath: '<%= grunt.appDir %>/stylesheets/sprite.png'
    stylesheetPath: '<%= grunt.appDir %>/stylesheets/sprite.styl'
    layout: 'vertical'
    compositor: 'gm'
