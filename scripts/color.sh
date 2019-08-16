#!/bin/bash
#@auth kesavan.muthuvel
#@desc - bash with colors :)

B=`tput bold`           #BOLD
D=`tput dim`            #DIM
U=`tput sgr 0 1`        #UNDERLINE
U2=`tput smul`          #UNDERLINE2
NOU=`tput rmul`         #NO UNDERLINE
H=`tput smso`           #HIGHLIGHT
X=`tput sgr0`           #RESET
C='tput setaf '         #COLOR


for i in 0 1 2 3 4 5 6 7 ; do
        c=`$C$i` && echo $c${B}I ${U}always$NOU $D love \
           ${U2}colors$NOU \& $c${H}UNIX / macOS$X
done;