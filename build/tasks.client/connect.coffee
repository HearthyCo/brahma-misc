module.exports = ->

  @loadNpmTasks "grunt-contrib-connect"

  @config "connect",
    server:
      options:
        port: 3001
        base: "public"
