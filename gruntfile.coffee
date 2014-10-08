module.exports = (grunt) ->
  
  # Project configuration.
  grunt.initConfig
    pkg: grunt.file.readJSON("package.json")

    responsive_images:
      main:
        options:
          sizes: [
            { name: 'thumb', quality: 80, width: 64, height: 64, rename: false, suffix: '_thumb', aspectRatio: false }
            { name: 'show', quality: 80, width: 1920, height: 1080, rename: false }
          ]
          engine: 'im'
          quality: 80
        files: [
          expand: true
          src: ['**/*.{jpg,gif,png}']
          cwd: 'originimages/'
          dest: 'tmpresizeimages/'
        ]

    imagemin:
      dynamic:
        files: [
          expand: true
          cwd: 'tmpresizeimages/'
          src: ['**/*.{png,jpg,gif}']
          dest: 'cdnimages/'
        ]

  
  # Load the plugin that provides the "uglify" task.
  grunt.loadNpmTasks "grunt-responsive-images"
  grunt.loadNpmTasks "grunt-contrib-imagemin"
  
  # Default task(s).
  grunt.registerTask "default", [
    "responsive_images"
    "imagemin"
  ]
  return

