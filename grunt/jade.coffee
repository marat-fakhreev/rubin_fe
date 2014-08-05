module.exports = (grunt) ->
  html:
    options:
      pretty: true
      client: false
    files: [
      '<%= grunt.publicDir %>/index.html': ['<%= grunt.appDir %>/index.jade']
      '<%= grunt.publicDir %>/index2.html': ['<%= grunt.appDir %>/index2.jade']
      '<%= grunt.publicDir %>/article.html': ['<%= grunt.appDir %>/article.jade']
    ]
