set CYG=cyg

set APP=c:\apg
set MWG=c:\msys64
set CRUN=c:\crun

set MSCLVARS="c:/Program Files (x86)/Microsoft Visual Studio/2019/Community/VC/Auxiliary/Build/vcvars64.bat"
set MSCLVARS="c:/Program Files/Microsoft Visual Studio/2022/Community/VC/Auxiliary/Build/vcvars64.bat"

set PWSH=C:\WINDOWS\System32\WindowsPowerShell\v1.0
set PATH=%APP%\run;%APP%\svn;%windir%;%windir%\system32;%PWSH%;%APP%\dll;%APP%\app\bin;%CRUN%

set MGWP1=%MWG%\mingw64\bin;%MWG%\usr\local\bin;%MWG%\usr\bin;%MWG%\bin
set MGWP2=%MWG%\usr\bin\site_perl;%MWG%\usr\bin\vendor_perl;%MWG%\usr\bin\core_perl

set PATH=%MGWP1%;%PATH%;%MGWP2%


echo %MSCLVARS%
%MSCLVARS%

:start
cd ..\..

