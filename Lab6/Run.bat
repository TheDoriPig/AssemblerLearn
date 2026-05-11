C:\masm32\bin\ml.exe /c /coff /Fl Lab6.asm
C:\masm32\bin\link.exe /SUBSYSTEM:WINDOWS /LIBPATH:"C:\masm32\lib" Lab6.obj kernel32.lib
pause
del Lab6.obj
start Lab6.exe