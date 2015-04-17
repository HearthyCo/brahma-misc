module.exports = ->
  @loadNpmTasks "grunt-contrib-clean"

  @config "clean",
    options:
      force: true
    public: [ "public/*" ]
    jsdist: [ "public/main.dist.js" ]
    env: [ "public/main.env.js" ]
