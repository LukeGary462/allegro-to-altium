#!/usr/bin/bash
echo "-------------------------------------------------------"
echo "STEP 1 - UPDATE ALLEGRO DESIGNS WITH DB DOCTOR CLI TOOL"
echo "-------------------------------------------------------"

echo "Ensure dbdoctor.exe is in System Path Variable!"
echo "This should be the path: C:\Cadence\OrCADX_25.1\tools\bin"
dbdoctor.exe -version

foldername=`date +%Y%m%d`
echo "making target dir : "
mkdir boards/$foldername

echo "Processing Files in boards/ ..."
cd boards/
files=`ls *.brd`
for file in $files; do
    echo "file : " "$file" " --> " "${file^^}"
    dbdoctor $file -drc -shapes -no_backup -outfile "dbdoctor-${file^^}"
done
cd ..

echo "---------------------------------------------------------------"
echo "STEP 2 - CONVERT *.BRD TO *.ALG FOR ALTIUM IMPORT WIZARD"
echo "---------------------------------------------------------------"

echo "Ensure extracta.exe is in System Path Variable!"
echo "This should be the path: C:\Cadence\OrCADX_25.1\tools\bin"

cd boards/
files=`ls *.BRD`
for file in $files; do
    echo "file : " "$file" " --> " "${file^^}.alg"
    ../Allegro2Altium.bat $file
done
cd ..

