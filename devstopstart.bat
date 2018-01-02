@echo off
CLS
ECHO !!!!!!!! ONSELNET DEVELOPER MOD STOP START !!!!!!!!!!!!
ECHO.
ECHO %date% TARIHLI ISLEMI YAPILACAK!
ECHO LUTFEN DEVAM EDIN...
ECHO.
REM **************************************************
net stop lfsvc
net stop OracleServiceXE
net stop OracleXETNSListener
net stop MSSQL$SQLEXPRESS
net stop SQLTELEMETRY$SQLEXPRESS
net stop SQLWriter
net stop YandexBrowserService
net stop SQLAgent$SQLEXPRESS
net stop SQLBrowser