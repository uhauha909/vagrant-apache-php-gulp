'use strict';

var Fiber = require('fibers');
var gulp = require('gulp');
var sass = require('gulp-sass');
var postcss = require('gulp-postcss');
var mqpacker = require('css-mqpacker');
var autoprefixer = require('autoprefixer');
var cssnano = require("cssnano");

sass.compiler = require('sass');

gulp.task('sass', function (done) {
  
  const plugin = [
    autoprefixer(),
    mqpacker(),
    // cssnano({ autoprefixer: false })
  ];

  gulp.src('../html/scss/style.scss')
  .pipe(sass({fiber: Fiber}).on('error', sass.logError))
  .pipe(postcss(plugin))
  .pipe(gulp.dest('../html/css'));

  done();
});

gulp.task('sass:watch', function () {
  gulp.watch('../html/scss/**/*.scss', gulp.task('sass'));
});

gulp.task('default', gulp.series('sass','sass:watch'));