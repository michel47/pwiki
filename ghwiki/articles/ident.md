# identification strings


## mutable path : '$Source$'

example : $Source: /my/markdown/files/ident.md $

viewable with the command :
``ident - identify RCS keyword strings in files``

> ident searches for all instances of the pattern $keyword: text $ in the
  named files or, if no files are named, the standard input.

  These patterns are normally inserted automatically by the  RCS  command
  co(1), but can also be inserted manually.  The option -q suppresses the
  warning given if there are no patterns in a file.  The option -V prints
  RCS's version number.

  ident works on text files as well as object files and dumps.

