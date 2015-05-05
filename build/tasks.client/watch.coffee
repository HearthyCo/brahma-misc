module.exports = ->

  @loadNpmTasks "grunt-contrib-watch"

  @config "watch",
    options:
      spawn: false
    grunt:
      files: "Gruntfile.coffee"
      tasks: ["development:web"]
    coffee:
      files: "app/**/*.coffee"
      tasks: ["js-web"]
    components:
      files: "brahma_modules/brahma-components/dist/**/*.js"
      tasks: ["js-web"]
    sass:
      files: "app/style/**/*"
      tasks: ["css"]
    css:
      files: "brahma_modules/brahma-css/dist/*.scss"
      tasks: ["css"]
    html:
      files: "app/index.html"
      tasks: ["html"]

