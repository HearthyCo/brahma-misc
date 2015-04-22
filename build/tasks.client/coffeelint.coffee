module.exports = ->

  @loadNpmTasks "grunt-coffeelint"

  @config "coffeelint",
    options:
      undefined_variables:
        module: "coffeelint-undefined-variables"
        level: "warn"
        globals: ["module", "console", "process", "require",
          "ex", "window", "props"]
      variable_scope:
        module: "coffeelint-variable-scope"
        level: "warn"
    all:
      src: ["Gruntfile.coffee", "app/**/*.coffee"]
