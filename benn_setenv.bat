@echo off
:: <-- sneaky abuse of batch syntax for labels makes a comment; you can use
:: this to easily enable/disable examples below.

:: -- benn's stuff --
:: Path and options for batch files that I like to use
title benn's shell
prompt $E[35;40m$T $E[1;36;40m$P$E[0m$G

::set NOSTATUS=1
set PATH=C:\usr\bin;%PATH%
set LS_OPTIONS=-bhAC --more --color=auto --recent --streams
set STORAGE=D:\storage
doskey ..=cd ..\$*
doskey cd=cd /D $*
doskey bin=cd /D %STORAGE%\bin
doskey projects=cd /D %STORAGE%\projects
doskey pf=cd /D %ProgramFiles%
doskey skyrim=cd /D "D:\SteamLibrary\SteamApps\common\Skyrim"
doskey cp=copy $*
doskey ~=cd /D %USERPROFILE%
doskey e=code $*

cd  %USERPROFILE%