@echo off

REM Building script for WASM target

SET build_directory="wasmed"
SET lib_sokol_inc="..\lib\sokol"
SET lib_nuklear_inc="..\lib\Nuklear"
SET lib_sokol_util_inc="..\lib\sokol\util"

if not exist %build_directory% mkdir %build_directory%

pushd %build_directory%

cp ../personal.html .

emcc ^
	../src/personal_website.c^
	-Os^
	-s WASM=1 -s USE_WEBGL2=1 -s FULL_ES3=1^
	--shell-file personal.html^
	-o index.html^
	-I%lib_sokol_inc%^
	-I%lib_nuklear_inc%^
	-I%lib_sokol_util_inc%

popd
