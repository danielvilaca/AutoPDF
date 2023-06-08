@echo off &setlocal enabledelayedexpansion
goto :main

:main

	
	set /A i=0
	set array=0
	set /A len=0
	
	
	type nul>C:\AutoPDF\PDFCycle1.txt
	
	echo ================AUTOPDF================
	echo             Counting PDFs ...
	echo =======================================
	
	cd C:\Reports
	
	for %%g in ( *.pdf ) do (
		echo %%g>> C:\AutoPDF\PDFCycle1.txt
		set array[%len%]=%%g
	)
	
:condition
	
	::TIMEOUT /T 2
	
	set "file=C:\AutoPDF\PDFCycle1.txt"
	
	for /F "usebackq delims=" %%a in ("%file%") do (
		set /A i+=1
		::call echo %%i%%
		call set array[%%i%%]=%%a
		call set n=%%i%%

		set string=%%a

		cd C:\Reports

		find /i "%%a" C:\AutoPDF\PDFCycle1.txt
		IF NOT EXIST "C:\FinalReports\%%a" (
			
			echo ================AUTOPDF================
			echo          Creating %%a ...
			echo =======================================
	
			cd "C:\AutoPDF"
			start pdfcancel.bat

			cd C:\Program Files\PDFCreator
			call pdfcreator-cli.exe PrintFile /File="C:\Reports\%%a" /OutputFile="C:\FinalReports\%%a"
			
			set "file=C:\AutoPDF\PDFCycle1.txt"
			
			echo %%a>> C:\AutoPDF\PDFCycle1.txt
			
			TIMEOUT /T 2
		)
	)
	
goto :main
