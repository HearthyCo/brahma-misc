module.exports = ->

  @loadNpmTasks "grunt-run"

  @config "run",
    start:
      cmd: "npm"
      args: ["start"]
      options:
        wait: false

    gradleAndroidDevelopment:
      cmd: "./gradlew"
      args: ["assembleDevelopment"]
      options:
        cwd: "../hearthy-client-android/"
    gradleAndroidPreproduction:
      cmd: "./gradlew"
      args: ["assemblePreproduction"]
      options:
        cwd: "../hearthy-client-android/"
    gradleAndroidProduction:
      cmd: "./gradlew"
      args: ["assembleProductionRelease"]
      options:
        cwd: "../hearthy-client-android/"
