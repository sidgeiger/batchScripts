@echo off 
::This is used to remove the first and the last character of a string
set str = Batch scripts is easy. It is really easy 
echo %str% 

set str = %str:~1,-1% 
echo %str%