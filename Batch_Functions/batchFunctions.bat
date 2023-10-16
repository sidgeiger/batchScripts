:: FuNctions
REM Function Declaration − It tells the compiler about a function's name, return type, and parameters.
REM Function Definition − It provides the actual body of the function.

:: Calling a function
REM the statement EXIT /B %ERRORLEVEL% is to separate the code of the main program from the function.
@echo off 
SETLOCAL 
CALL :Display 
EXIT /B %ERRORLEVEL% 
:Display 
SET /A index=2 
echo The value of index is %index% 
EXIT /B 0


:: Calling function with parameters@echo off
SETLOCAL
CALL :Display 5 , 10
EXIT /B %ERRORLEVEL%
:Display
echo The value of parameter 1 is %~1
echo The value of parameter 2 is %~2
EXIT /B 0


:: Calling a function with parameters and with return value
@echo off
SETLOCAL
CALL :SetValue value1,value2
echo %value1%
echo %value2%
EXIT /B %ERRORLEVEL%
:SetValue
set "%~1 = 5"
set "%~2 = 10"
EXIT /B 0


:: Function with a local variable
@echo off
set str = Outer
echo %str%
CALL :SetValue str
echo %str%
EXIT /B %ERRORLEVEL%
:SetValue
SETLOCAL
set str = Inner
set "%~1 = %str%"
ENDLOCAL
EXIT /B 0
REM the output is: 
REM "Outer"
REM "Outer"


:: Recursive function CALL@echo off
REM Prints out: The next Fibonacci number greater or equal 1000000000 is 1134903170.
set "fst = 0"
set "fib = 1"
set "limit = 1000000000"
call:myFibo fib,%fst%,%limit%
echo.The next Fibonacci number greater or equal %limit% is %fib%.
echo.&pause&goto:eof
:myFibo -- calculate recursively
:myFibo -- calculate recursively the next Fibonacci number greater or equal to a limit
SETLOCAL
set /a "Number1 = %~1"
set /a "Number2 = %~2"
set /a "Limit = %~3"
set /a "NumberN = Number1 + Number2"

if /i %NumberN% LSS %Limit% call:myFibo NumberN,%Number1%,%Limit%
(ENDLOCAL
   IF "%~1" NEQ "" SET "%~1 = %NumberN%"
)goto:eof


:: Creating a file in Function
@echo off
echo "Hello">C:\new.txt


:: Writing to file@echo off
REM writes into file all enviromental variables starting with 'J'
@echo off
SET J C:\>C:\paths_J.txt


:: Adding text to a file
REM appends the string after echo to the file speified after >>
@echo off
echo "This is some text to add." >> C:\paths_J.txt



:: Reading from a file (using for loop)
REM  delims parameter is used to break up the text in the file into different tokens or words. 
REM Each word or token is then stored in the variable x
@echo off
FOR /F "tokens=* delims=" %%x in (new.txt) DO echo %%x



:: Deleting files
DEL C:\paths_J.txt
REM /P Prompts for confirmation before deleting each file.
REM /F Force deletes of read-only files
REM /S Deletes specified files from all subdirectories.
REM /Q Quiet mode, do not ask if ok to delete on global wildcard.
REM /A Selects files to delete based on attributes.
REM attributes
REM 	R Read-only files 
REM 	S System files
REM 	H Hidden files
REM 	A Files ready for archiving - Prefix meaning not


:: Rename files
REN [drive:][path][directoryname1 | filename1] [directoryname2 | filename2]


:: Move files
MOVE [/Y | /-Y] [drive:][path]filename1[,...] destination
REM destination: Specifies the new location of the file. 
REM 			 Destination can consist of a drive letter and colon, 
REM 			 a directory name, or a combination. If you are moving 
REM 			 only one file, you can also include a filename 
REM 			 if you want to rename the file when you move it.
REM 	/Y	Suppresses prompting to confirm you want to overwrite an existing destination file.
REM 	/-Y Causes prompting to confirm you want to overwrite an existing destination file.



:: Batch PIPE (|)
REM [ STDIN | STDOUT ]
@echo off 
REM In this example, the contents of the file C:\new.txt are sent to the sort command through the pipe filter.
TYPE C:\new.txt | sort

REM the below command will first take all the files defined in C:\, 
REM then using the pipe command, will find all the files with the .txt extension. 
REM It will then take this output and print it to the file AllText.txt.
@echo off
dir C:\ | find "txt" > AllText.txt

REM opens tasklist (Windows Task Manager)
REM filters out all which are not "Notepad" tasks
REM all Notepad related process will be listed into tasklist.txt file
@echo off
tasklist | find "notepad" > tasklist.txt


