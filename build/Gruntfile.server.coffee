module.exports = ->
  # Load task configurations.
  @loadTasks "build/tasks"

  # COMMON
  @registerTask "build", ["coffeelint"]


  # ENVIRONMENTS
  @registerTask "local", [
    "env:local", "copy:local", "build"
  ]
  @registerTask "development", [
    "env:development", "copy:development", "build"
  ]
  @registerTask "preproduction", [
    "env:preproduction", "copy:preproduction", "build"
  ]
  @registerTask "production", [
    "env:production", "copy:production", "build"
  ]

  # DEFAULT
  @registerTask "default",  ["development"]
  @registerTask "dev",      ["development", "run:start", "watch"]
  @registerTask "heroku",   ["production"]