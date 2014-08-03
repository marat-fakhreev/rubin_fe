module.exports = (grunt) ->
  options:
    port: '<%= grunt.ports.connect %>'
    livereload: '<%= grunt.ports.livereload %>'
    hostname: 'localhost'
  development:
    options:
      base: '<%= grunt.publicDir %>'
  production:
    options:
      base: '<%= grunt.productionDir %>'
  proxies: [
    context: '/api'
    host: 'localhost'
    port: '<%= grunt.ports.easymock %>'
  ]
