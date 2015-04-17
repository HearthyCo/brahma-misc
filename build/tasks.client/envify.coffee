module.exports = ->
  @loadNpmTasks "grunt-envify"

  @config "envify",
    envify:
      files:
        "public/main.js": ["public/main.env.js"]