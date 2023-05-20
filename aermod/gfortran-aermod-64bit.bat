rem @echo off
setlocal
set COMPILE_FLAGS=-fbounds-check -Wuninitialized -O2 -static
set LINK_FLAGS= -static -O2

gfortran -m64 -c %COMPILE_FLAGS% modules.f  
gfortran -m64 -c %COMPILE_FLAGS% aermod.f   
gfortran -m64 -c %COMPILE_FLAGS% setup.f    
gfortran -m64 -c %COMPILE_FLAGS% coset.f    
gfortran -m64 -c %COMPILE_FLAGS% soset.f    
gfortran -m64 -c %COMPILE_FLAGS% reset.f    
gfortran -m64 -c %COMPILE_FLAGS% meset.f    
gfortran -m64 -c %COMPILE_FLAGS% ouset.f    
gfortran -m64 -c %COMPILE_FLAGS% inpsum.f   
gfortran -m64 -c %COMPILE_FLAGS% metext.f   
gfortran -m64 -c %COMPILE_FLAGS% iblval.f   
gfortran -m64 -c %COMPILE_FLAGS% siggrid.f  
gfortran -m64 -c %COMPILE_FLAGS% tempgrid.f 
gfortran -m64 -c %COMPILE_FLAGS% windgrid.f 
gfortran -m64 -c %COMPILE_FLAGS% calc1.f    
gfortran -m64 -c %COMPILE_FLAGS% calc2.f    
gfortran -m64 -c %COMPILE_FLAGS% prise.f    
gfortran -m64 -c %COMPILE_FLAGS% prime.f    
gfortran -m64 -c %COMPILE_FLAGS% sigmas.f   
gfortran -m64 -c %COMPILE_FLAGS% pitarea.f  
gfortran -m64 -c %COMPILE_FLAGS% uninam.f
gfortran -m64 -c %COMPILE_FLAGS% output.f   
gfortran -m64 -c %COMPILE_FLAGS% evset.f    
gfortran -m64 -c %COMPILE_FLAGS% evcalc.f   
gfortran -m64 -c %COMPILE_FLAGS% evoutput.f
gfortran -m64 -c %COMPLIE_FLAGS% rline.f  

gfortran -m64 -o aermod.exe %LINK_FLAGS% MODULES.o AERMOD.o SETUP.o COSET.o SOSET.o RESET.o MESET.o OUSET.o INPSUM.o METEXT.o IBLVAL.o SIGGRID.o TEMPGRID.o WINDGRID.o CALC1.o CALC2.o PRISE.o PRIME.o SIGMAS.o PITAREA.o UNINAM.o OUTPUT.o EVSET.o EVCALC.o EVOUTPUT.o RLINE.o

del *.o
del *.mod