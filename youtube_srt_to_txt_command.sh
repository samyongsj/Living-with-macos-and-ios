#!/bin/bash
#usage: cat inputfile | this_script > outputfile
 
cat test | sed -e '/\<\/font\>/ !d' -e 's_\<\/font>_ _g' -e 's_\<font\ color=.........\>_ _g' | tr -s ' ' | tr -d '\n' > subtotext