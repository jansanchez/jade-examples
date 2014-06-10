module.exports = function(grunt) {

  // Project configuration.
  grunt.initConfig({
    //watch
    watch: {
      jade: {
        files: ['**/*.jade'],
        tasks: ['jade'],
        options: {
          pretty: true,
          interrupt: true
        }
      }
    },
    //jade
    jade: {
      compile: {
        options: {
          pretty: true
        },
        files: [{
          expand: true,
          cwd: './',
          src: [ '**/*.jade', '!**/_*.jade'],
          dest: 'output_html/',
          ext: '.html'
        }]
      }
    }
  });

  //loadNpmTasks
  grunt.loadNpmTasks('grunt-contrib-watch');
  grunt.loadNpmTasks('grunt-contrib-jade');
  
  // Run Default task(s).
  grunt.registerTask('html', ['jade']);

  grunt.registerTask('watch-nojs', ['watch:jade']);

  grunt.registerTask('default', ['html']);

};