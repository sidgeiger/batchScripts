:: Each element of the array needs to be defined with the set command.
rem 'a' array's first element(index 0) value = 1
set a[0]=1
:: The ‘for’ loop would be required to iterate through the values of the array.


:: to implement arrays is to define a list of values and iterate through the list of values
@echo off 
set list=1 2 3 4 
(for %%a in (%list%) do ( 
   echo %%a 
))

:: access an element in array a
@echo off 
set a[0]=1 
echo %a[0]%


:: To add an element to the end of the array, you can use the set element along with the last index of the array element.
@echo off 
set a[0]=1  
set a[1]=2  
set a[2]=3 
Rem Adding an element at the end of an array 
Set a[3]=4 
echo The last element of the array is %a[3]%


:: To modify an element of an array
@echo off 
set a[0]=1 
set a[1]=2  
set a[2]=3 
Rem Setting the new value for the second element of the array 
Set a[1]=5 
echo The new value of the second element of the array is %a[1]%

:: Iterating Over an Array
@echo off 
setlocal enabledelayedexpansion 
set topic[0]=comments 
set topic[1]=variables 
set topic[2]=Arrays 
set topic[3]=Decision making 
set topic[4]=Time and date 
set topic[5]=Operators 
rem Each element of the array needs to be specifically defined using the set command.
rem The ‘for’ loop with the /L parameter for moving through ranges is used to iterate through the array.
for /l %%n in (0,1,5) do ( 
   echo !topic[%%n]! 
)

:: Length ofan array
@echo off 
set Arr[0]=1 
set Arr[1]=2 
set Arr[2]=3 
set Arr[3]=4 
set "x = 0" 
:SymLoop 

if defined Arr[%x%] ( 
   call echo %%Arr[%x%]%% 
   set /a "x+=1"
   GOTO :SymLoop 
)
echo "The length of the array is" %x%


:: Creating Structures in Arrays
@echo off 
set obj[0].Name=Joe 
set obj[0].ID=1 
set obj[1].Name=Mark 
set obj[1].ID=2 
set obj[2].Name=Mohan 
set obj[2].ID=3 
FOR /L %%i IN (0 1 2) DO  (
   call echo Name = %%obj[%%i].Name%%
   call echo Value = %%obj[%%i].ID%%
)
rem Each variable defined using the set command has 2 values associated with each inremdex of the array.
rem The variable i is set to 0 so that we can loop through the structure will the length of the array which is 3.
rem We always check for the condition on whether the value of i is equal to the value of len and if not, 
rem we loop through the code. We are able to access each element of the structure using the obj[%i%] notation.
:: output is:
:: Name=Joe 
:: Value=1 
:: Name=Mark 
:: Value=2 
:: Name=Mohan 
:: Value=3