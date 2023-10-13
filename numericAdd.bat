rem We are first setting the value of 2 variables, a and b to 5 and 10 respectively.
rem We are adding those values and storing in the variable c.
rem Finally, we are displaying the value of the variable c.
@echo off 
SET /A a = 5 
SET /A b = 10 
SET /A c = %a% + %b% 
echo %c%
pause