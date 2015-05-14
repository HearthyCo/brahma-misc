module.exports = ->
  @loadNpmTasks "grunt-contrib-copy"

  @config "copy",
    local:
      files: [
        src: ["src/config/envs/local.env"]
        filter: "isFile"
        dest: ".env"
      ]
    development:
      files: [
        src: ["src/config/envs/development.env"]
        filter: "isFile"
        dest: ".env"
      ]
    preproduction:
      files: [
        src: ["src/config/envs/preproduction.env"]
        filter: "isFile"
        dest: ".env"
      ]
    production:
      files: [
        src: ["src/config/envs/production.env"]
        filter: "isFile"
        dest: ".env"
      ]