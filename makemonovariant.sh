#!/bin/bash
make
COPYRIGHT="
EB-Garamond 12 Mono was converted from EB-Garamond by the monospaci.py script by Thomas Eriksson (https://github.com/arnognulf/monospaci.py)

EB-Garamond was created by Georg Duffner with FontForge 2.0 (http://fontforge.sf.net)" 
 
python monospaci.py/monospaci.py -psname "EB-Garamond12Mono" -fullname "EB-Garamond12Mono" -copyright "$COPYRIGHT" -nameslist monospaci.py/NamesList.txt build/EBGaramond12-Regular.otf

rm *Output.ttf
fontlint *.ttf
