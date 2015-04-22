module.exports = ->
  @loadNpmTasks "grunt-env"

  @config "env",
    web:
      HEARTHY_APP: "web"

    mobile:
      HEARTHY_APP: "mobile"

    tablet:
      HEARTHY_APP: "tablet"

    android:
      HEARTHY_PLATFORM: "android"

    ios:
      HEARTHY_PLATFORM: "ios"

    development:
      BRAHMA_API_PORT: "tcp://brahma-api.byglue.me:80"
      BRAHMA_CHAT_PORT: "tcp://localhost:1337"

    preproduction:
      BRAHMA_API_PORT: "tcp://api.demo.hearthy.co:80"
      BRAHMA_CHAT_PORT: "tcp://chat.demo.hearthy.co:80"

    production:
      BRAHMA_API_PORT: "tcp://api.demo.hearthy.co:80"
      BRAHMA_CHAT_PORT: "tcp://chat.demo.hearthy.co:80"
