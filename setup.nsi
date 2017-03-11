
OutFile "dictionary.exe"
SilentInstall silent

section
sectionend

Function .onInit
InitPluginsDir
SetOutPath $PLUGINSDIR
  File /r "plugins\"
  File "D3Dcompiler_47.dll"
  File "libEGL.dll"
  File "libgcc_s_dw2-1.dll"
  File "libGLESV2.dll"
  File "libstdc++-6.dll"
  File "libwinpthread-1.dll"
  File "opengl32sw.dll"
  File "Qt5Core.dll"
  File "Qt5Gui.dll"
  File "Qt5Svg.dll"
  File "Qt5Widgets.dll"
  File "dictionary.exe"
FunctionEnd

Function .onInstSuccess
call fun
Functionend

Function fun
   ExecWait $PLUGINSDIR\dictionary.exe
   RMDir $PLUGINSDIR
FunctionEnd
