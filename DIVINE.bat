@echo off
:: this batch files purpose is to be used for boredom, you will have the choice between addition, subtraction and multiplication.
:: there is 20 levels in all off them. enjoy...
:: Creator - Lemmy_Konfutse


title Divine
SETLOCAL EnableDelayedExpansion
for /F "tokens=1,2 delims=#" %%p in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set "DEL=%%p"
)

set /a lv=0

::start screen
:st
mode con: cols=70 lines=30
color 9
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo	        _  _  __    __    __    _   _    __    __    __      __    
echo	       ( \/ )/__\  (  )  (  )  ( )_( )  /__\  (  )  (  )    /__\   
echo	        \  //(__)\  )(__  )(__  ) _ (  /(__)\  )(__  )(__  /(__)\  
echo	         \/(__)(__)(____)(____)(_) (_)(__)(__)(____)(____)(__)(__) 
echo	     ____  _  _  ____  __  __  ___  ____  ____  ____  ____  ___ 
echo	    (_  _)( \( )(  _ \(  )(  )/ __)(_  _)(  _ \(_  _)( ___)/ __)
echo	     _)(_  )  (  )(_) ))(__)( \__ \  )(   )   / _)(_  )__) \__ \
echo	    (____)(_)\_)(____/(______)(___/ (__) (_)\_)(____)(____)(___/
echo.
echo.
echo                            Copyright 2019©
timeout /t 3 >nul
goto menu

::Menu 
:menu 
cls
mode con: cols=36 lines=20
set /a lv=0
color f
echo	     ___ _____   _____ _  _ ___ 
echo	    I   \_ _\ \ / /_ _I \I I __I
echo	    I I) I I \ V / I II .` I _I 
echo	    I___/___I \_/ I___I_I\_I___I
echo.	 
call :ct 22 "-----------------------------------"
echo.
echo  Choose between:
echo. 
echo    x = Multiplication
echo    - = Subtraction
echo    + = Addition
echo.
call :ct 22 "-----------------------------------"
echo.
set /p menuc="-I-: "

if %menuc%==+ goto 1
if %menuc%==x goto 2
if %menuc%==- goto 3

goto menu 


::Addition

:1
cls
mode con: cols=25 lines=20
color f
set /a menuc=1
set /a lv=%lv%+1
if %lv%==21 goto end


call :ct 02 " level %lv%             +"
echo.
call :ct cc "-------------------------"
echo.


set /a ra1=%random% %%81
set /a ra2=%random% %%81
set /a result=%ra1%+%ra2%

::-The code below shows the result.
::echo %result%
::echo.

set /p "m1=%ra1%+%ra2%? "

if %m1%==back goto menu
if %m1%==%result% goto 1


goto error

::Multiplication

:2
cls
mode con: cols=25 lines=20
color f
set /a menuc=2
set /a lv=%lv%+1
if %lv%==21 goto end


call :ct 02 " level %lv%             x"
echo.
call :ct ee "-------------------------"
echo.

set /a ra1=%random% %%11
set /a ra2=%random% %%11
set /a result=%ra1%*%ra2%

::echo %result%
::echo.

set /p m1="%ra1%*%ra2%? "

if %m1%==back goto menu
if %m1%==%result% goto 2


goto error

::Subtraction

:3
cls
mode con: cols=25 lines=20
color f
set /a menuc=3
set /a lv=%lv%+1
if %lv%==21 goto end


call :ct 02 " level %lv%             -"
echo.
call :ct 11 "-------------------------"
echo.

set /a ra1=%random% %%81
set /a ra2=%random% %%81
set /a result=%ra1%-%ra2%

::echo %result%
::echo.

set /p m1="%ra1%-%ra2%? "

if %m1%==back goto menu
if %m1%==%result% goto 3

goto error


::color shit

:ct
echo off
<nul set /p ".=%DEL%" > "%~2"
findstr /v /a:%1 /R "^$" "%~2" nul
del "%~2" > nul 2>&1
goto :eof

::Wrong Answer

:error
cls
color 4
set /a lv=0
echo.
echo.
echo.
echo.
echo           WRONG
timeout /t 2 >nul
if %menuc%==1 goto 1
if %menuc%==2 goto 2
if %menuc%==3 goto 3

::Win screen

:end
cls
color fa
echo.
echo.
echo.
echo.
echo         YOU WON
timeout /t 4 >nul
set /a lv=0
goto menu





