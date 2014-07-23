module.exports = (grunt) ->
  bower:
    options:
      stdout: true
    command:
      'bower install'
  images:
    options:
      stdout: true
    command:
      'cd <%= grunt.publicDir %> ; mkdir images'
