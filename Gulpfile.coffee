gulp = require 'gulp'
coffeelint = require 'gulp-coffeelint'

gulp.task 'default', ['lint']

gulp.task 'lint', ->
  gulp.src('./karma.conf.coffee')
    .pipe(coffeelint())
    .pipe(coffeelint.reporter())