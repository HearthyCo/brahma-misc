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
      ANDROID_KEYSTORE: "../../brahma-misc/android/hearthy.jks"
      ANDROID_KEYSTORE_PASSWORD: "gic-ba-hir-uv-en-wiet-mi-h"
      ANDROID_KEY_ALIAS: "hearthy"
      ANDROID_KEY_PASSWORD: "a-twod-foy-phriesh-ot-a-wr"

    ios:
      HEARTHY_PLATFORM: "ios"

    local:
      BRAHMA_API_PORT: process.env.LOCAL_BRAHMA_API_PORT or
        "tcp://localhost:9000"
      BRAHMA_CHAT_PORT: process.env.LOCAL_BRAHMA_CHAT_PORT or
        "tcp://localhost:1337"

    development:
      BRAHMA_API_PORT: "tcp://brahma-api.byglue.me:80"
      BRAHMA_CHAT_PORT: "tcp://brahma-chat.byglue.me:80"

    preproduction:
      BRAHMA_API_PORT: "tcp://api.demo.hearthy.co:80"
      BRAHMA_CHAT_PORT: "tcp://chat.demo.hearthy.co:80"

    production:
      BRAHMA_API_PORT: "tcp://api.demo.hearthy.co:80"
      BRAHMA_CHAT_PORT: "tcp://chat.demo.hearthy.co:80"
