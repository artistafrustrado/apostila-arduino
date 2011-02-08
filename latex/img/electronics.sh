#!/bin/bash
PTH=$1

TEMPLATE=<<EOS
\\begin{figure}[!htb]
     \\centering
     \\includegraphics[scale=0.3]{img/$PTH/leds.jpg}
     \\caption{leds}
     \\label{leds}
\\end{figure}
EOS



TEMPLATE="\\begin{figure}[!htb]<br>	\\centering<br>	\\includegraphics[scale=0.3]{img/$PTH/leds.jpg}<br>	\\caption{leds}<br>	\\label{leds}<br>\\end{figure}<br><br>"
#echo $TEMPLATE

for FILE in $(ls $PTH)
do 
#	echo $FILE
	VAR=$(echo $FILE | sed -r 's#.(jpg|png)##g; s#_# #g')
	echo $TEMPLATE | sed -r "s#(leds.jpg)#$FILE#g;s#(caption|label)\{leds\}#\1{$VAR}#g;s#<br>#\n#g"
done
