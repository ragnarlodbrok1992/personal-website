@echo off

REM Remember that paths should not end in '\' character on Windows because fuck you

SET build_directory="compiled"
SET lib_sokol_inc="..\lib\sokol"
SET lib_nuklear_inc="..\lib\Nuklear"
SET lib_sokol_util_inc="..\lib\sokol\util"

if not exist %build_directory% mkdir %build_directory%

pushd %build_directory%

cl /EHsc^
	/Fe"personal-website.exe"^
	..\src\personal_website.c^
	/I%lib_sokol_inc%^
	/I%lib_nuklear_inc%^
	/I%lib_sokol_util_inc%

popd
