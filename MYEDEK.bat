@echo off
CLS

ECHO !!!!!!!! ONSELNET YEDEKLEME VE KOPYALAMA !!!!!!!!!!!!
ECHO.
ECHO %date% TARIHININ YEDEKLEME ISLEMI YAPILACAK!
ECHO LUTFEN TUM TERMINALLERIN PROGRAMDAN CIKTIGINDAN EMIN OLDUKTAN SONRA DEVAM EDIN...
ECHO.
REM **************************************************
REM SQL DURDURMA KOMUTU (SQL ISMINI MANEGMENT STUDIODAN BAKABILIRSIN)  

net stop MSSQL$SQLEXPRESS

REM **************************************************
REM HARDISKTE ACILMASINI ISTEDIÐIMIZ KLASOR

MKDIR F:\YEDEKMIKRO\%date%\v15xx

REM ********************** ***************************
REM   YEDEKLANCEK DOSYALARI KOPYALAMA ÝÞLEMLERÝ

REM    KAYNAK DOSYA              HEDEF DOSYA
REM ********************** ****************************
  XCOPY D:\Mikro\v15xx\@echo off
CLS

ECHO !!!!!!!! ONSELNET YEDEKLEME VE KOPYALAMA !!!!!!!!!!!!
ECHO.
ECHO %date% TARIHININ YEDEKLEME ISLEMI YAPILACAK!
ECHO LUTFEN TUM TERMINALLERIN PROGRAMDAN CIKTIGINDAN EMIN OLDUKTAN SONRA DEVAM EDIN...
ECHO.
REM **************************************************
REM SQL DURDURMA KOMUTU (SQL ISMINI MANEGMENT STUDIODAN BAKABILIRSIN)  

net stop MSSQL$SQLEXPRESS

REM **************************************************
REM HARIDISKTE ACILMASINI ISTEDIÐIMIZ KLASOR

MKDIR F:\YEDEKMIKRO\%date%\v15xx

REM ********************** ***************************
REM   YEDEKLANCEK DOSYALARI KOPYALAMA ÝÞLEMLERÝ

REM    KAYNAK DOSYA              HEDEF DOSYA
REM ********************** ****************************
  XCOPY D:\Mikro\v15xx\*.* F:\YEDEKMIKRO\%date%\v15xx /E /Y /H /R /Q
REM **************************************************
REM SQL BASLATMA KOMUTU (SQL ISMINI MANEGMENT STUDIODAN BAKABILIRSIN)  

net start MSSQL$SQLEXPRESS

REM **************************************************
ECHO.
ECHO                           YEDEKLEME Tamamlandi!
ECHO.
REM             YEDEKLENEN KLASORUN OZELLIKLERINI LOG.TXT KAYDEDER.

REM **************************************************
REM HEDEF VE KAYNAK ARASINDAKI DOSYALARIN  LOGLANMASI

DIR F:\YEDEK\%date%\v15xx\*.* /A /S> F:\YEDEK\%date%\M_LOG.TXT
DIR F:\YEDEK\%date%\PROMOPOS\*.* /A /S > F:\YEDEK\%date%\P_LOG.TXT
DIR D:\MIKRO\v15xx\*.* > F:\YEDEK\%date%\MIK_LOG.TXT
DIR D:\PROMOPOS\*.* > F:\YEDEK\%date%\POS_LOG.TXT
EXIT\ F:\YEDEKMIKRO\%date%\v15xx /E /Y /H /R /Q
REM **************************************************
REM SQL BASLATMA KOMUTU (SQL ISMINI MANEGMENT STUDIODAN BAKABILIRSIN)  

net start MSSQL$SQLEXPRESS

REM **************************************************
ECHO.
ECHO                           YEDEKLEME Tamamlandi!
ECHO.
REM             YEDEKLENEN KLASORUN OZELLIKLERINI LOG.TXT KAYDEDER.

REM **************************************************
REM HEDEF VE KAYNAK ARASINDAKI DOSYALARIN  LOGLANMASI

DIR F:\YEDEK\%date%\v15xx\*.* /A /S> F:\YEDEK\%date%\M_LOG.TXT
DIR F:\YEDEK\%date%\PROMOPOS\*.* /A /S > F:\YEDEK\%date%\P_LOG.TXT
DIR D:\MIKRO\v15xx\*.* > F:\YEDEK\%date%\MIK_LOG.TXT
DIR D:\PROMOPOS\*.* > F:\YEDEK\%date%\POS_LOG.TXT
EXIT