@echo off 
set str = Helloworld 
echo %str%
rem This is used to extract a substring via the position of the characters in the string.
set str = %str:~5,10% 
echo %str%