module.exports = ->
  @loadNpmTasks "grunt-env"

  @config "env",
    web:
      HEARTHY_APP: "web"

    mobile:
      HEARTHY_APP: "mobile"

    tablet:
      HEARTHY_APP: "tablet"

    ios:
      HEARTHY_PLATFORM: "ios"

    android:
      HEARTHY_PLATFORM: "android"

    desktop:
      HEARTHY_PLATFORM: "desktop"

    local:
      BRAHMA_API_PORT: process.env.LOCAL_BRAHMA_API_PORT or
        "http://localhost:9000"
      BRAHMA_CHAT_PORT: process.env.LOCAL_BRAHMA_CHAT_PORT or
        "ws://localhost:1337"

    development:
      BRAHMA_API_PORT: "http://localhost:9000"
      BRAHMA_CHAT_PORT: "wss://chat.demo.hearthy.co"

    preproduction:
      BRAHMA_API_PORT: "https://api.demo.hearthy.co"
      BRAHMA_CHAT_PORT: "wss://chat.demo.hearthy.co"

    production:
      BRAHMA_API_PORT: "https://api.demo.hearthy.co"
      BRAHMA_CHAT_PORT: "wss://chat.demo.hearthy.co"
