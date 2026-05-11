C:\masm32\bin\ml.exe /c /coff /Fl Lab4.asm
C:\masm32\bin\link.exe /SUBSYSTEM:CONSOLE /LIBPATH:"C:\masm32\lib" Lab4.obj kernel32.lib
pause
del Lab4.obj
start Lab4.exe