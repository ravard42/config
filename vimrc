" swap files {{{

" swap files (.swp) in a common location

" Create directories if needed.
fun! RequireDirectory(directory)
    if !isdirectory(a:directory)
        call mkdir(a:directory)
    endif
endf

" // means use the file's full path
set dir=~/.vim/_swap//
call RequireDirectory(expand("~") . "/.vim/_swap")

" backup files (~) in a common location if possible
set backup
set backupdir=~/.vim/_backup/,~/tmp,/tmp
call RequireDirectory(expand("~") . "/.vim/_backup")

" turn on undo files, put them in a common location
set undofile
set undodir=~/.vim/_undo/
call RequireDirectory(expand("~") . "/.vim/_undo")

" }}}
