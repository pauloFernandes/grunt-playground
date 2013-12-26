module.exports = (grunt)->
  gruntObj = 
    pkg : grunt.file.readJSON "package.json" 
    jasmine:
      pitoval:
        src: "dist/main.min.js"
        options:
          specs: "build/spec/*.js"
          helpers: "build/spec/helpers/*.js"  
    uglify:
      options:
        banner: '/* <%= grunt.template.today("dd-mm-yyyy") %> */\n'
      dist:
        files:
          "dist/main.min.js": ["build/src/*.js", "build/src/**/*.js"]
    coffee:
      compile:
        expand: true
        src: ["src/**/*.coffee", "spec/**/*.coffee"]
        dest: "build/"
        ext: ".js"
    coffeelint: 
      app: ["src/*.coffee", "spec/*.coffee", "spec/helpers/*.coffee"]
    watch:
      cofeescript:
        files: ["src/**/*.coffee", "spec/**/*.coffee", "spec/helpers/**/*.coffee"]
        tasks: ["coffeelint", "coffee"]
      scripts:
        files: ["build/src/**/*.js", "build/spec/**/*.js", "build/spec/helpers/**/*.js"]
        tasks: ["uglify", "jasmine"]

  grunt.initConfig gruntObj

  grunt.loadNpmTasks "grunt-coffeelint"
  grunt.loadNpmTasks "grunt-contrib-coffee"
  grunt.loadNpmTasks "grunt-contrib-uglify"
  grunt.loadNpmTasks "grunt-contrib-jasmine"
  grunt.loadNpmTasks "grunt-contrib-watch"
  # grunt.registerTask "default", ["jasmine"]