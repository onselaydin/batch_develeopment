@echo off
CLS
ECHO !!!!!!!! ONSELNET DEVELOPER MOD STOP START !!!!!!!!!!!!
ECHO.
ECHO %date% TARIHLI ISLEMI YAPILACAK!
ECHO LUTFEN DEVAM EDIN...
ECHO.
REM **************************************************
REM SET var=Hello, World!
REM net start | grep -x "OracleServiceXE"
sc query "OracleServiceXE" | find "RUNNING"
REM if %ERRORLEVEL% == 2 goto trouble
if %ERRORLEVEL% == 1 goto stopped
if %ERRORLEVEL% == 0 goto started

:started
ECHO !!!!!! SERVISLER DURDURULUYOR !!!!!!
net stop lfsvc
net stop OracleServiceXE
net stop OracleXETNSListener
net stop OracleOraClient12Home1_32bitMTSRecoveryService
net stop MSSQL$SQLEXPRESS
net stop SQLTELEMETRY$SQLEXPRESS
net stop SQLWriter
net stop YandexBrowserService
rem net stop SQLAgent$SQLEXPRESS
rem net stop SQLBrowser
goto end
:stopped
ECHO !!!!!! SERVISLER BAŞLATILIYOR !!!!!!
net start lfsvc
net start OracleServiceXE
net start OracleXETNSListener
net start OracleOraClient12Home1_32bitMTSRecoveryService
net start MSSQL$SQLEXPRESS
net start SQLTELEMETRY$SQLEXPRESS
net start SQLWriter
net start YandexBrowserService
rem net start SQLAgent$SQLEXPRESS
rem net start SQLBrowser
goto end
:end
ECHO ISLEM TAMAMLANDI.
EXIT