@echo off &setlocal enabledelayedexpansion
goto :main

:main
	
	TIMEOUT /T 5 && taskkill /f /im Acrobat.exe

exit