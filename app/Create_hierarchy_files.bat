:: Name: Scrip for create hierarchy files
:: Description: Quick create hierarchy file e.g. when you still use some hierarchy or you have your own hierarchy, this is way how create it one time ant other times easy
:: Author: Jakub Sumihora
:: Country: Slovakia
:: Date created: 09.04.2015
:: Last modify: 10.04.2015
:: Version: 1

:: NOTE: you need change SET and RUN part for file locations, names and number of files if you want create different files
:: NOTE: easy way: put this file to location where you want create hierarchy files and open it 

::MKDIR
::    -p: will also create all directories leading up to the given directory that do not exist already. If the given directory already exists, ignore the error.
::   -v: display each directory that mkdir creates. Most often used with -p.
::    -m: specify the octal permissions of directories created by mkdir.





:: Script for Applications opener for Windows ::
	TITLE Create hierarchy files

:: don't show normal command lines
@ECHO OFF

::SETS----------------->>
	REM :: like string (you can use it like %createdBy% (pre linux, teda SHELL: -p src\{main\{java,resources,filters,assembly,config,webapp},test\{java,resources,filters},site}"
		::rem:: you can use it in CME (command line / terminal) too
		
		::I want this:: src\{main\{java,resources,filters,assembly,config,webapp},test\{java,resources,filters},site}"
		::CFCF - configuration for create files
	set "CFCF_1_0= src\main\java,"
	set "CFCF_1_1= src\main\res"
	set "CFCF_1_2= src\main\filters"
	set "CFCF_1_3= src\main\assembly"
	set "CFCF_1_4= src\main\config"
	set "CFCF_1_5= src\main\webapp"
	set "CFCF_1_6= src\main\script"
	
	set "CFCF_2_0= src\test\java"
	set "CFCF_2_1= src\test\res"
	set "CFCF_2_2= src\test\filters"
	
	set "CFCF_3_0= src\it"
	set "CFCF_4_0= src\assembly"
	set "CFCF_5_0= src\site"
	
	set "CFCF_6_0= > LICENSE.txt"
	set "CFCF_7_0= > NOTICE.txt"
	set "CFCF_8_0= > README.txt"
	set "CFCF_9_0= lib"
	set "CFCF_A_0= documents"
	
	set "today=%date:~10,4%-%date:~7,2%-%date:~4,2%"

	set "createdBy=Jakub Sumihora"
	set "createdDate=09.04.2015"
	set "lastModify=09.04.2015"
	set "version=1"	

::start---------------------------------------------------------------------------------------------||
::RUN----------------->>
:RUN
	Cls REM :: clear console
	color 0F
	ECHO[
	ECHO  ----------------------------------------------------
	ECHO  * Create mian hierarchy files for Java programing  *	
	ECHO  ----------------------------------------------------
	ECHO[

			REM :: Create files

			mkdir %CFCF_1_0%
			mkdir %CFCF_1_1%
			mkdir %CFCF_1_2%
			mkdir %CFCF_1_3%
			mkdir %CFCF_1_4%
			mkdir %CFCF_1_5%
			mkdir %CFCF_1_6%
			
			mkdir %CFCF_2_0%
			mkdir %CFCF_2_1%
			mkdir %CFCF_2_2%
			
			mkdir %CFCF_3_0%
			mkdir %CFCF_4_0%
			mkdir %CFCF_5_0%
			
			mkdir %CFCF_6_0%
			mkdir %CFCF_7_0%
			mkdir %CFCF_8_0%
			
			mkdir %CFCF_9_0%
			
			::Show tree and save tree of hierarchy folders
			GOTO:SHOW-TREE-AND-SAVE			
	ECHO[
	ECHO  ----------------------------------------------------
	GOTO:OPTIONS
	
::OPTIONS------------->>
:OPTIONS
	::color 0f
	ECHO[
	ECHO -- OPTIONS ----------------
	ECHO  S = show created folders (tree)
	ECHO  I = about
	ECHO  X = exit
	ECHO ---------------------------
	
	
	SET/P ch=" Enter Symbol " REM :: Input
		IF %ch% EQU i GOTO:ABOUT
		IF %ch% EQU I GOTO:ABOUT
		IF %ch% EQU x GOTO:EXI
		IF %ch% EQU X GOTO:EXI
	
	CLS REM :: clear cmd
	
::SHOW-TREE------------>>
:SHOW-TREE-AND-SAVE
	::rem:: show tree of hierarchy of folder and save him
	REM :: Show created files like tree of hierarchy and save this hierarchy to readMe.localHierarchy.txt
	:: @tree /a /f showFreeOfThisPlace > saveToThisFile ... e.g. @tree /a /f c:\ > readMe.localHierarchy.txt
	@tree /a /f
	@tree /a /f > readMe.localHierarchy.txt
	
	GOTO:OPTIONS

:ABOUT
::ABOUT---------->>
	::clear CMD 
	cls
	ECHO[
	ECHO ----------------------------------------------------
	ECHO  Created by: %createdBy%
	ECHO  Created Date: %createdDate%
	ECHO  Last version: %lastModify%
	ECHO  Version: %version%
	ECHO  Doday is: %date%
	ECHO[
	ECHO ----------------------------------------------------
	ECHO[
	GOTO:OPTIONS
::EXIT---------->>
:EXI
	EXIT