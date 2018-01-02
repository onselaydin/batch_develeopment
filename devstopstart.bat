@echo off
CLS
ECHO !!!!!!!! ONSELNET DEVELOPER MOD STOP START !!!!!!!!!!!!
ECHO.
ECHO %date% TARIHLI ISLEMI YAPILACAK!
ECHO LUTFEN DEVAM EDIN...
ECHO.
REM **************************************************
SET var=Hello, World!
net start | grep -x "OracleServiceXE"

REM if %ERRORLEVEL% == 2 goto trouble
if %ERRORLEVEL% == 1 goto stopped
if %ERRORLEVEL% == 0 goto started

:started
ECHO !!!!!! SERVISLER DURDURULUYOR !!!!!!
net stop lfsvc
net stop OracleServiceXE
net stop OracleXETNSListener
net stop MSSQL$SQLEXPRESS
net stop SQLTELEMETRY$SQLEXPRESS
net stop SQLWriter
net stop YandexBrowserService
net stop SQLAgent$SQLEXPRESS
net stop SQLBrowser

:stopped
ECHO !!!!!! SERVISLER BAŞLATILIYOR !!!!!!
net start lfsvc
net start OracleServiceXE
net start OracleXETNSListener
net start MSSQL$SQLEXPRESS
net start SQLTELEMETRY$SQLEXPRESS
net start SQLWriter
net start YandexBrowserService
net start SQLAgent$SQLEXPRESS
net start SQLBrowser