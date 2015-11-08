/*
some simple tasks
for a simple page
*/
module.exports = function(grunt){
  grunt.initConfig({
    pkg: grunt.file.readJSON('package.json'),
    responsive_images: {
      dev: {
        options: {
          engine: 'im',
          sizes: [{
            width: '300px',
            suffix: '_sm',
            quality: 65
          },
          {
            width: '400px',
            suffix: '_md',
            quality: 65
          },
          {
            width: '800px',
            suffix: '_lg',
            quality: 65
          }]
        },
        files: [{
          expand: true,
          src: ['*.{gif,jpg}'],
          cwd: 'src/img/',
          dest: 'app/assets/images/'
        }]
      }
    }  
  });
  //grunt.loadNpmTasks('grunt-contrib-copy');
  grunt.loadNpmTasks('grunt-contrib-concat');
  grunt.loadNpmTasks('grunt-responsive-images');
  grunt.registerTask('default', ['responsive_images']);//,'imagemin']);//,'concat']);
}