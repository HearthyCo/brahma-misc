module.exports = ->
  # Load task configurations.
  @loadTasks "build/tasks"

  # COMMON
  @registerTask "html",     ["merge-json", "copy:html"]
  @registerTask "css",      ["compass"]
  @registerTask "js-pack",  ["copy:components", "coffeelint", "browserify"]
  @registerTask "build-dev", [
    "clean:public", "html", "css", "js-pack"
    "env:mobile"
    "env:android", "envify", "copy:publicAndroid"
    "env:ios", "envify", "copy:publicIos"
    "env:web", "envify", "clean:env"
  ]
  @registerTask "build-all", [
    "clean:public", "html", "css", "cssmin", "js-pack"
    "env:mobile"
    "env:android", "envify", "compile", "copy:publicAndroid"
    "env:ios", "envify", "compile", "copy:publicIos"
    "env:web", "envify", "compile", "clean:env"
  ]
  @registerTask "compile", ["uglify:dist", "copy:jsdist", "clean:jsdist"]

  # ENVIRONMENTS
  @registerTask "local", [
    "env:local"
    "build-dev"
  ]
  @registerTask "development", [
    "env:development"
    "build-dev"
  ]
  @registerTask "preproduction", [
    "env:preproduction"
    "build-all"
  ]
  @registerTask "production", [
    "env:production"
    "build-all"
  ]

  # ENVIRONMENTS, MOBILE
  @registerTask "local:mobile", [
    "local"
    "run:gradleAndroidLocal"
  ]
  @registerTask "development:mobile", [
    "development"
    "run:gradleAndroidDevelopment"
  ]
  @registerTask "preproduction:mobile", [
    "preproduction"
    "run:gradleAndroidPreproduction"
  ]
  @registerTask "production:mobile", [
    "preproduction"
    "run:gradleAndroidProduction"
  ]

  # DEFAULT
  @registerTask "default",  ["development"]
  @registerTask "dev",      ["development", "run", "watch"]
  @registerTask "mobile",   ["development:mobile"]
  @registerTask "heroku",   ["production"]
