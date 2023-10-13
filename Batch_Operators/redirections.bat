REM 	command > filename − Redirect command output to a file.
REM 	command >> filename − APPEND into a file.
REM 	command < filename − Type a text file and pass the text to command.
REM 	command 2> file − Write standard error of command to file (OS/2 and NT).
REM 	command 2>> file − Append standard error of command to file (OS/2 and NT).
REM 	commandA | commandB − Redirect standard output of commandA to standard input of command.

::ipconfig command will be sent to the file C:\details.txt
@echo off 
ipconfig>C:\ipdetails.txt


::details of the systeminfo command will be appended to the file C:\ipdetails.txt
@echo off 
systeminfo>>C:\ipdetails.txt


:: sorting the content of Example.txt file@echo off
@echo off
SORT < Example.txt


:: writing the standard error of command to file (OS/2 and NT)
rem if there is any error in processing the command of the directory listing of C, 
rem then it will be sent to the log file errorlog.txt.
DIR C:\ >List_of_C.txt 2>errorlog.txt


:: 	This command redirects standard output of commandA to standard input of command.
rem command will pass the option of ‘y’ which is the value of ‘Yes’ to the command of del. 
rem This will cause the deletion of all files with the extension of txt.

Echo y | del *.txt