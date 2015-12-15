var gulp = require('gulp'),
    sourcemaps = require('gulp-sourcemaps'),
    autoprefixer = require('gulp-autoprefixer'),
    less = require('gulp-less'),
    minifyCSS = require('gulp-minify-css'),
    rename = require('gulp-rename'),
    path = require('path'),
    watch = require('gulp-watch'),
    browserSync = require('browser-sync').create(),
    shell = require('gulp-shell');

/**
 * @task less
 * Compile files from less
 * rename, generate source maps, compile, autoprefix, minify/clean
 */
gulp.task('less', function () {
  return gulp.src([
      'sites/all/themes/custom/testsite_theme/css/base/normalize.css.less',
      // 'sites/all/themes/custom/testsite_theme/css/formalize.css',
      'sites/all/themes/custom/testsite_theme/css/styles.css.less',
      'sites/all/themes/custom/testsite_theme/css/themes/print.css.less'
    ])
    .pipe(rename(function (path) {
      // stripping '.css' from FILENAME.css.less so that the
      // final file name is filename.css (not filename.css.css)
      var css_index = path.basename.indexOf('.css');
      if (css_index > -1) {
        path.basename = path.basename.substr(0, css_index);
      }
    }))
    .pipe(sourcemaps.init())
    .pipe(less())
    .pipe(autoprefixer({
      browsers: ['last 2 versions'],
      cascade: false
    }))
    .pipe(minifyCSS())
    .pipe(sourcemaps.write({
      sourceRoot: function (file) {
        // remove cwd from less file path
        return file.base.substr(file.cwd.length);
      }
    }))
    .pipe(gulp.dest('sites/all/themes/custom/testsite_theme/css/build'))
    .pipe(browserSync.reload({stream: true}));
});

// Static Server + watching less files
gulp.task('serve', ['less'], function() {

  browserSync.init({
    // proxy: "localhost:8888",
    // server: "/var/www/testclient/testsite/docroot"
    socket: {
      domain: '10.0.0.68:3000'
    }
  });

  var less_paths = [
    'sites/all/themes/custom/testsite_theme/css/*.less',
    'sites/all/themes/custom/testsite_theme/css/**/*.less'
  ];
  gulp.watch(less_paths, ['less']);
});

gulp.task('default', ['serve']);

