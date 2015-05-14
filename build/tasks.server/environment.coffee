module.exports = ->
  @loadNpmTasks "grunt-env"

  @config "env",
    local:
      NODE_ENV: "local"

    development:
      NODE_ENV: "development"

    preproduction:
      NODE_ENV: "preproduction"

    production:
      NODE_ENV: "production"
