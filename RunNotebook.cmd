@ECHO OFF

SETLOCAL ENABLEEXTENSIONS
SET me=%~n0
SET parent=%~dp0
SET wolframEXE="C:\Program Files\Wolfram Research\Mathematica\10.4\WolframKernel.exe"
SET wolframScript="%parent%RunNotebook.wl"

REM eventually this will be passed as a parameter
SET targetNotebook="%parent%MakeMeIntoHTML.nb"

start /b "cmd window title" %wolframEXE% -script %wolframScript% -targetNotebook %targetNotebook% > NUL 2>&1

REM PAUSE

:END
ENDLOCAL
ECHO ON
@EXIT /B 0
