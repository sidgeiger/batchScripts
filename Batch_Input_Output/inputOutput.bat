:: Input / Output

rem the standard streams, are referenced using the numbers 0, 1, and 2. 
rem Stdin is file 0 
rem stdout is file 1 
rem stderr is file 2

Dir C:\ > list.txt

rem this would redirect the stderr to the file lists.txt
Dir C:\ 2> list.txt

rem combine the stdout and stderr streams using the file number
DIR C:\ > lists.txt 2>&1



:: Suppressing Program Output

rem The pseudo file NUL is used to discard any output from a program. 
rem The following example shows that the output of the command DIR is discarded by sending the output to NUL.
Dir C:\ > NUL


::Stdin WORKAORUND

rem redirect the output to a file called lists.txt. 
rem the command prompt will take all the input entered by user till it gets an EOF character. 
rem Later, it sends all the input to the file lists.txt.
TYPE CON > lists.txt