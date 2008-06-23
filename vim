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
#examples
dt(
dt"

# search replace from here to end of file
.,$s/.../.../g

# some weird macro for fixing html. I forget what it does
macro:ggqqg_IDjq5000@q

# modeline
# vim: ts=4:
# ^^ you can set things in vim like that.
# don't forget to set modeline in vimrc
# the colon at the end tells vim where the modeline ends

#to use vim to convert crlf to lf
:set ff=unix | w

# paste visual search into vim : buffer
C-r"
# also know as ctrl+r "

# make a map on visual g/ it should copy highlighted text into buffer and 
# escape it.
# written by godlygeek
function SearchSelected() 
	let save=@" 
	norm! gvy 
	let @/='\V'.escape(@",'\') 
	let @"=save 
endfunction 
 
:vnoremap g/ <ESC>:call SearchSelected()<CR>
