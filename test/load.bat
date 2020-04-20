 @echo off
for /f %%a in ('dir /B /S *.hex') do dfuse_commandline.exe %%a %%a.dfu
for /f %%a in ('dir /B /S *.dfu') do DfuSeCommand.exe -c -d --fn %%a
 echo the current directory is %CD%