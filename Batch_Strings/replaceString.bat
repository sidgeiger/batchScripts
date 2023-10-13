@echo off 
set str=This message needs changed. 
echo %str% 
::replace String
set str=%str:needs=has% 
echo %str%
:: output: This message has changed. 