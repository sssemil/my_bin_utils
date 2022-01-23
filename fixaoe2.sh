#!/bin/bash

SCRIPTPATH="$( cd "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

cd ~/.steam/steam/steamapps/compatdata/813780/pfx/drive_c/windows/system32/

rm ucrtbase.dll

#wget "https://aka.ms/vs/16/release/vc_redist.x64.exe"
wget https://download.microsoft.com/download/9/3/F/93FCF1E7-E6A4-478B-96E7-D4B285925B00/vc_redist.x64.exe
#cp $SCRIPTPATH/fixaoe2_vc_redist.x64.exe ./vc_redist.x64.exe

cabextract vc_redist.x64.exe

sudo cabextract a10



