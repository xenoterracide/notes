# vim
#  " is the comment for vim files

# read formatoptions and fo-table for auto formatting

# remember to look for pattern for substitute "patterns".
# ctrl-v enter will insert a carriage return.

# to paste 0 register. also known as forget about what I deleted and remember 
# my yank. don't forget to look up register's
0p

# add space to end of line that doesn't end with >
:s/\([^>]\)$/\1 /

# delete up until the occurence of character.
# dt<char>
#example
dt(

# search replace from here to end of file
.,$s/.../.../g

# some weird macro for fixing html. I forget what it does
macro:ggqqg_IDjq5000@q
