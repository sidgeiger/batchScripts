@echo off 
set str = This message needs changed. 
echo %str% 
rem This is used to extract characters from the end of a string.
set str = %str:~-8% 
echo %str%
:: output is: changed.