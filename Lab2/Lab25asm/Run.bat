C:\masm32\bin\ml.exe /c /coff /Fl Lab25.asm
C:\masm32\bin\link.exe /SUBSYSTEM:CONSOLE /LIBPATH:"C:\masm32\lib" Lab25.obj kernel32.lib
pause
del Lab25.obj
start Lab25.exe