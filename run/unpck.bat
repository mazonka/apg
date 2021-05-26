@echo off 
setlocal
REM usage split.bat <filename>
set filename=%~n1
set extension=%~x1
::endlocal 

set PATH=%PATH%;c:\apg\run


set filen=%filename:~0,-4%
set exten=%filename:~-4%
set extt=%exten%%extension%
::echo input file: ^<%filename%^> ^<%extension%^> ^<%filen%^> ^<%exten%^> ^<%extt%^>

if NOT %extt% == .fcl.bz2 goto bad

bzip2 -d -k %filen%.fcl.bz2
chmod 0777 %filen%.fcl
fcl extr %filen%.fcl
chmod -R 0777 %filen%

if exist %filen% rm -f %filen%.fcl

::echo ok
exit

:bad
echo Bad extension, expect ^<file^>.fcl.bz2