// Include gulp
var gulp = require('gulp'); 

// Include Our Plugins
var sass = require('gulp-sass');
var uglify = require('gulp-uglify');

var browserify = require('gulp-browserify');
var rename = require('gulp-rename');
var exec = require('child_process').exec;
var slim = require("gulp-slim");

gulp.task('slim', function(){
  gulp.src("www/assets/slim/*.slim")
    .pipe(slim({
      pretty: true
    }))
    .pipe(gulp.dest("www/"));
});
gulp.task('jest', function() {
  exec('npm test', function (err, stdout, stderr) {
    console.log(stdout);
    console.log(stderr);
    //console.log(err);
  });
});
gulp.task('coffee', function() {
  gulp.src('www/assets/scripts/coffee/content.coffee', { read: false })
    .pipe(browserify({
      transform: ['coffeeify'],
      extensions: ['.coffee']
    }))
    .pipe(rename('bundle.js'))
    .pipe(gulp.dest('www/assets/scripts'))
});
gulp.task('uglify', function(){
  gulp.src('www/assets/scripts/bundle.js')
  .pipe(uglify())
  .pipe(rename('bundle.min.js'))
  .pipe(gulp.dest('www/assets/scripts'));
});

// Compile Our Sass
gulp.task('sass', function() {
    return gulp.src('www/assets/scss/*.scss')
        .pipe(sass())
        .pipe(gulp.dest('www/assets/css'));
});

// Concatenate & Minify JS
//gulp.task('scripts', function() {
//    return gulp.src('js/*.js')
//        .pipe(concat('all.js'))
//        .pipe(gulp.dest('dist'))
//        .pipe(rename('all.min.js'))
//        .pipe(uglify())
//        .pipe(gulp.dest('dist'));
//});

// Watch Files For Changes
gulp.task('watch', function() {
    //gulp.watch('js/*.js', ['lint', 'scripts']);
    gulp.watch('www/assets/slim/*.slim', ['slim']);
    gulp.watch('www/assets/scss/*.scss', ['sass']);
    gulp.watch('www/assets/scripts/coffee/**/*.coffee', ['coffee']);
    gulp.watch('www/assets/scripts/coffee/**/*.coffee', ['jest']);
    gulp.watch('www/assets/scripts/__tests__/**/*.coffee', ['jest']);
});

// Default Task
gulp.task('default', ['watch']);
