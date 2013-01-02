#!/bin/bash
make
COPYRIGHT="
EB-Garamond 12 Mono was converted from EB-Garamond by the monospaci.py script by Thomas Eriksson (https://github.com/arnognulf/monospaci.py)

EB-Garamond was created by Georg Duffner with FontForge 2.0 (http://fontforge.sf.net)" 
SCALE=1.5
python monospaci.py/monospaci.py -psname "EBGaramond12Mono" -fullname "EBGaramond12Mono" -copyright "$COPYRIGHT" -nameslist monospaci.py/NamesList.txt SFD/EBGaramond12-Regular.sfdir

python monospaci.py/monospaci.py -leadingscale $SCALE -psname "EBGaramond12MonoHalfLead" -fullname "EBGaramond12MonoHalfLead" -copyright "$COPYRIGHT" -nameslist monospaci.py/NamesList.txt SFD/EBGaramond12-Regular.sfdir

COPYRIGHT="
EB-Garamond 8 Mono was converted from EB-Garamond by the monospaci.py script by Thomas Eriksson (https://github.com/arnognulf/monospaci.py)

EB-Garamond was created by Georg Duffner with FontForge 2.0 (http://fontforge.sf.net)" 
 
python monospaci.py/monospaci.py -psname "EBGaramond8Mono" -fullname "EBGaramond8Mono" -copyright "$COPYRIGHT" -noscalechar Q -nameslist monospaci.py/NamesList.txt SFD/EBGaramond08-Mono.sfdir

python monospaci.py/monospaci.py  -leadingscale $SCALE -psname "EBGaramond8MonoHalfLead" -fullname "EBGaramond8MonoHalfLead" -noscalechar Q -copyright "$COPYRIGHT" -nameslist monospaci.py/NamesList.txt SFD/EBGaramond08-Mono.sfdir

rm *Output.ttf
fontlint *.ttf
mv EBGaramond8Mono.ttf build/
mv EBGaramond8MonoHalfLead.ttf build/
mv EBGaramond12Mono.ttf build/
mv EBGaramond12MonoHalfLead.ttf build/

