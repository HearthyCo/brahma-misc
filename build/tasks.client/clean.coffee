module.exports = ->
  @loadNpmTasks "grunt-contrib-clean"

  @config "clean",
    options:
      force: true
    public: [ "public/*", "public-android/*", "public-ios/*" ]
    jsdist: [ "public/main.dist.js" ]
    env: [
      "public/main.env.js",
      "public-android/main.env.js", "public-ios/main.env.js"
    ]
