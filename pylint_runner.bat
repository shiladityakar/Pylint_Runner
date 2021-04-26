@echo off
REM
REM Version		: 1.0.1
REM Author		: Shiladitya Kar
REM

title "pylint_runner.cmd"

set file_name=%1

ECHO Analysing source code

ECHO * Starting the Analysis %date% %time% >> pylint_runner.log

REM Reading a particular file
if NOT "%file_name%"=="" (
	ECHO * Analysing %file_name% >> pylint_runner.log
	ECHO * Starting Analysis %date% %time% on %file_name%  >> pylint_runner_result.xls
	pylint %file_name% >> %file_name%.log
	ECHO * Ending Analysis %date% %time% on %file_name% >> %file_name%.log
)

REM Reading entire folder
if "%file_name%"=="" (
	for /r %%i in (*.py) do (
		ECHO * Analysing "%%i" >> pylint_runner.log
		ECHO * Starting Analysis %date% %time% on "%%i" >> pylint_runner_result.xls
		pylint "%%i" >> pylint_runner_result.xls
		ECHO * Ending Analysis %date% %time% on "%%i" >> pylint_runner_result.xls
	)
)

ECHO * Ending the Analysis %date% %time% >> pylint_runner.log
