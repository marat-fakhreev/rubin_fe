module.exports = (grunt) ->
  development:
    src: [
      '<%= grunt.appDir %>/images/**/*'
    ]
    spritePath: '<%= grunt.publicDir %>/images/sprites/sprite.png'
    stylesheetPath: '<%= grunt.appDir %>/stylesheets/core/sprite.styl'
    layout: 'vertical'
    compositor: 'gm'
