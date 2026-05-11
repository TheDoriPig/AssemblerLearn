C:\masm32\bin\ml.exe /c /coff /Fl Lab5.asm
C:\masm32\bin\link.exe /SUBSYSTEM:CONSOLE /LIBPATH:"C:\masm32\lib" Lab5.obj kernel32.lib
pause
del Lab5.obj
start Lab5.exe