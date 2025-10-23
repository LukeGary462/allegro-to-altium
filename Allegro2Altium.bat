rem @echo off
set input_file=%1
set input_ext=%~x1

IF /I '%input_ext%'=='.BRD' (
extracta.exe %input_file% AllegroExportViews.txt AllegroBoard.txt AllegroLayer.txt AllegroConnectivity.txt AllegroNetRules.txt AllegroPadStack.txt AllegroGeometry.txt AllegroSymbolDefinitions.txt AllegroSymbolInstances.txt AllegroAddlGeometry.txt AllegroMultiStackup.txt
COPY AllegroBoard.txt+AllegroLayer.txt+AllegroConnectivity.txt+AllegroNetRules.txt+AllegroPadStack.txt+AllegroGeometry.txt+AllegroSymbolDefinitions.txt+AllegroSymbolInstances.txt+AllegroAddlGeometry.txt+AllegroMultiStackup.txt AllegroASCII.txt
DEL AllegroBoard.txt AllegroLayer.txt AllegroConnectivity.txt AllegroNetRules.txt AllegroPadStack.txt AllegroGeometry.txt AllegroSymbolDefinitions.txt AllegroSymbolInstances.txt AllegroAddlGeometry.txt AllegroMultiStackup.txt
MOVE /-Y AllegroASCII.txt %1.alg 
)

IF /I '%input_ext%'=='.DRA' (
extracta.exe %input_file% AllegroPackageExportViews.txt AllegroBoard.txt AllegroLayer.txt AllegroConnectivity.txt AllegroNetRules.txt AllegroPadStack.txt AllegroGeometry.txt AllegroSymbolDefinitions.txt AllegroSymbolInstances.txt AllegroAddlGeometry.txt AllegroMultiStackup.txt
COPY AllegroBoard.txt+AllegroLayer.txt+AllegroConnectivity.txt+AllegroNetRules.txt+AllegroPadStack.txt+AllegroGeometry.txt+AllegroSymbolDefinitions.txt+AllegroSymbolInstances.txt+AllegroAddlGeometry.txt+AllegroMultiStackup.txt AllegroASCII.txt
DEL AllegroBoard.txt AllegroLayer.txt AllegroConnectivity.txt AllegroNetRules.txt AllegroPadStack.txt AllegroGeometry.txt AllegroSymbolDefinitions.txt AllegroSymbolInstances.txt AllegroAddlGeometry.txt AllegroMultiStackup.txt
MOVE /-Y AllegroASCII.txt %1.lalg 
)
