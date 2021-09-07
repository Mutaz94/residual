@echo off
echo ------------------------------------------------------- 
echo Investigating the contribution of residual unexplained
echo variability components in NLME approach 
echo -------------------------------------------------------

set /A DOSE=120
set /A TDOSE=0
set /A NSUBS=100
set /A NSIMS=100
set TYPE=int spa
set BASE=base.cpp
set PER=B A1 A2 A3 S1 S2 TD1 TD2 D All 


echo Lets start by creating datasets ...

echo Moving to simulation directory

echo Creating datasets....
cd src\sim\
( for %%i in (%TYPE%) do (
	(for %%j in (%PER%) do (
    		call Rscript --vanilla -e "source('generate.R')" %NSUBS% %NSIMS% %TDOSE% %DOSE% %%i %BASE% %%j > tempR.out 2>&1
))))

echo Data has been generated.
echo Back to main directory...
cd ..\..\
