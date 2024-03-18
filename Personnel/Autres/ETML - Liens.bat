@echo off
TITLE Bienvenue %USERNAME%  
MODE con:cols=80 lines=32
start K:\INF\Eleves\Classes\MIN1\sanj.bat
color 02

:inicio
SET var=0
cls
echo ===============================================================================
echo                     [=======] [==========] [====]       [====] [==]
echo  Auteur:            [==]          [==]     [==][==]   [==][==] [==]
echo                     [=====]       [==]     [==] [==][==]  [==] [==]
echo  ANONYMOUS          [==]          [==]     [==]   [==]    [==] [==]
echo                     [=======]     [==]     [==]           [==] [=======]
echo ===============================================================================
echo   %DATE% ^| %TIME% 
echo ===============================================================================
echo  ETML = Lausanne
echo ===============================================================================
echo  1              Etml - Accueil
echo  2              Etml - Horaire
echo  3              Etml - Restaurant
echo  4              Etml - GestEleves
echo ===============================================================================
echo  SOURCES
echo ===============================================================================
echo  5              Educanet2
echo  6              Microsoft Imagine X
echo  7              Moodle
echo  8              Portal Office
echo ===============================================================================
echo  AUTRES
echo ===============================================================================
echo  9              Contacter
echo -------------------------------------------------------------------------------
echo  10             Sortir
echo ===============================================================================
echo.

SET /p var= ^> Select the options [1-10]: 

if "%var%"=="0" goto inicio
if "%var%"=="1" goto op1
if "%var%"=="2" goto op2
if "%var%"=="3" goto op3
if "%var%"=="4" goto op4
if "%var%"=="5" goto op5
if "%var%"=="6" goto op6
if "%var%"=="7" goto op7
if "%var%"=="8" goto op8
if "%var%"=="9" goto op9
if "%var%"=="10" goto op10

::Message d'error, il faut selectioner un des options.
echo. Le numero "%var%" n'est pas valide.
echo.
pause
echo.
goto:inicio

:op1
	start www.etml.ch
	pause
	goto:inicio
:op2
	start https://www.portail.vd.ch/formation/hyperplanning/etml/invite
	goto:inicio
:op3
	start https://www.etml.ch/vie-de-lecole/menus-du-restaurant.html
	pause
	goto:inicio
:op4
	start https://gesteleves.etmlnet.local
	pause
	goto:inicio
:op5
	start www.educanet2.ch
	pause
	goto:inicio
:op6
	start https://onthehub.com/search/higher-ed
	pause
	goto:inicio
:op7
	start https://moodle.section-inf.ch/moodle/login/
	pause
	goto:inicio

:op8
	start https://portal.office.com/account/
	pause
	goto:inicio
:op9
	start www.etml.ch/contact.html
	pause
	goto:inicio
:op10
	pause

    @cls&exit