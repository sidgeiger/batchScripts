@echo off 
set str = Batch scripts is easy. It is really easy. 
echo %str% 
rem The key thing to note about the above program is, the ‘is’ word is being removed from the string using the :’stringtoberemoved’ = command.
set str = %str:is = % 
echo %str%
:: output is: Batch scripts easy. It really easy. 