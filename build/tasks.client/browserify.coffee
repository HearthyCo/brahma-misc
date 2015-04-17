module.exports = ->
  @loadNpmTasks "grunt-browserify"

  @config "browserify",
    dev:
      files:
        "public/main.env.js": "app/app.coffee"
      options:
        browserifyOptions:
          extensions: [".coffee"]
          fullPaths: false
          debug: true
        transform: ["coffeeify", "uglifyify"]
        plugin: ["bundle-collapser/plugin"]
        exclude: ["jquery"]
