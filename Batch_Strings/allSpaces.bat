@echo off 
set str = This string    has    a  lot  of spaces 
echo %str% 
rem Remove all spaces
set str=%str:=% 
echo %str%