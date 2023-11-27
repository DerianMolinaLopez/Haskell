/******************EJECUCION DE HASKELL CON GULP******************************** */


const gulp = require('gulp');
const shell = require('gulp-shell');
const watch = require('gulp-watch');

const sourceFiles = ['./practicash/codigosClase/dulces.hs']; // Agrega aquí todos los archivos Haskell que quieras observar
const outputDirectory = './practicash/codigosClase/';
const executableName = 'dulces';

// Tarea para compilar archivos Haskell
function compileHaskell() {
    return gulp.src(sourceFiles, { read: false })
        .pipe(shell(`ghc ${sourceFiles.join(' ')}`));
}

// Tarea para ejecutar el programa Haskell compilado
function runHaskell() {
    return gulp.src(outputDirectory + executableName, { read: false })
        .pipe(shell(`./${outputDirectory}${executableName}`));
}

// Tarea para observar cambios en los archivos Haskell
function watchHaskell() {
    return watch(sourceFiles, function () {
        gulp.series(compileHaskell, runHaskell)()
            .on('error', function (err) {
                console.error('Error en la tarea watch:', err.message);
                this.emit('end'); // Continuar con la observación después de manejar el error
            });
    });
}

// Tarea predeterminada que se ejecuta al correr 'gulp' en la línea de comandos
gulp.task('default', gulp.series(compileHaskell, runHaskell, watchHaskell));
