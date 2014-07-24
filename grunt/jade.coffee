module.exports = (grunt) ->
  html:
    options:
      pretty: true
      client: false
    files: [
      '<%= grunt.publicDir %>/index.html': ['<%= grunt.appDir %>/index.jade']
    ]
