::  while
@echo off
SET /A "index = 1"
SET /A "count = 5"
:while
if %index% leq %count% (
   echo The value of index is %index%
   SET /A "index = index + 1"
   goto :while
)


:: classic loop
@echo off 
SET /A i = 1 
:loop 

IF %i%==5 GOTO END 
echo The value of i is %i% 
SET /a i=%i%+1 
GOTO :LOOP 
:END


:: for 
@echo off 
rem %% used for varieable declaration
rem The variable declaration is done with the %% sign at the beginning of the variable name.
rem The list of values is defined after the IN clause.
rem The do_something code is defined after the echo command. Thus for each value in the list, 
rem the echo command will be executed.
FOR %%F IN (1 2 3 4 5) DO echo %%F


:: loopingn through ranges with FOR@ECHO OFF 
rem The /L switch is used to denote that the loop is used for iterating through ranges.
rem prints out the even numbers between 0 and 6 (increment with the middle value: 2)
FOR /L %%X IN (0,2,6) DO ECHO %%X


:: Looping through Command Line Arguments
rem Let’s assume that our code is stored in a file called Test.bat. 
rem The following command will produce the following output 
rem if the batch file passes the command line arguments of 1,2 and 3 as Test.bat 1 2 3.
@ECHO OFF 
:Loop 

IF "%1"=="" GOTO completed 
FOR %%F IN (%1) DO echo %%F 
SHIFT 
GOTO Loop 
:completed




:: break loop (by adding an Increment label to loop)
@echo off 
SET /A "index=1" 
SET /A "count=5" 
:while 
if %index% leq %count% ( 
   if %index%==2 goto :Increment 
      echo The value of index is %index% 
:Increment 
   SET /A "index=index + 1" 
   goto :while 
)
