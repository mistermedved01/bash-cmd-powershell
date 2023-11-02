############################################################################################################################
#Была необходимость для каждого пользователя ПК сделать браузером по умолчанию Google Chrome. Раскатка групповыми политиками
############################################################################################################################
@echo off
IF EXIST C:\Users\%UserName%\AppData\app_init.txt GOTO END
:APPFLAG
date /t >> C:\Users\%UserName%\AppData\app_init.txt
time /t >> C:\Users\%UserName%\AppData\app_init.txt
SetUserFTA.exe  http ChromeHTML
SetUserFTA.exe  https ChromeHTML
SetUserFTA.exe  .htm ChromeHTML
SetUserFTA.exe  .html ChromeHTML
:END
