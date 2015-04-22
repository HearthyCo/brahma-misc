module.exports = ->
  # Load task configurations.
  @loadTasks "build/tasks"

  # COMMON
  @registerTask "html",    ["merge-json", "copy:html"]
  @registerTask "css",     ["compass"]
  @registerTask "js",      ["copy:components", "coffeelint",
                            "browserify", "envify", "clean:env"]
  @registerTask "compile", ["uglify:dist", "copy:jsdist", "clean:jsdist"]

  @registerTask "build-dev", ["clean:public", "html", "css", "js"]
  @registerTask "build",     [
    "clean:public"
    "html"
    "css"
    "cssmin"
    "js"
    "compile"
  ]

  # ENVIRONMENTS, WEB
  @registerTask "development", [
    "env:web"
    "env:development"
    "build-dev"
  ]
  @registerTask "preproduction", [
    "env:web"
    "env:preproduction"
    "build"
  ]
  @registerTask "production", [
    "env:web"
    "env:production"
    "build"
  ]

  # ENVIRONMENTS, MOBILE
  @registerTask "development:mobile", [
    "env:mobile"
    "env:android"
    "env:development"
    "build-dev"
  ]
  @registerTask "preproduction:mobile", [
    "env:mobile"
    "env:android"
    "env:preproduction"
    "build"
  ]
  @registerTask "production:mobile", [
    "env:mobile"
    "env:android"
    "env:production"
    "build"
  ]

  # DEFAULT
  @registerTask "default",  ["development"]
  @registerTask "dev",      ["build-dev", "run", "watch"]
  @registerTask "mobile",   ["development:mobile"]
  @registerTask "heroku",   ["production"]
