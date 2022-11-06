@echo off
Setlocal enabledelayedexpansion

Set "Pattern=720p.HDTV.x264-FKKTV"
Set "Replace=1080p.HDTV.x265"

For %%# in ("Z:\Shares\Encoding\New folder\*.mkv") Do (
   	Set "File=%%~nx#"
   	Ren "%%#" "!File:%Pattern%=%Replace%!"
	echo Renamed %%~nx# to !File:%Pattern%=%Replace%!
)

echo:
echo All files renamed successfully

Pause&Exit