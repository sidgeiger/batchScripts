@echo off 
:: align right
set x = 1000 
set y = 1 
set y = %y% 
echo %x% 
rem Spaces are added to the variable of y, in this case we are adding 9 spaces to the variable of y.
rem We are using the ~-4 option to say that we just want to show the last 4 characters of the string y.
set y = %y:~-4% 
echo %y%