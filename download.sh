#!/bin/bash
platform=Win10
url=https://github.com/RealVincentBerthet/Binaries/releases/download/${platform}%2F
dir=binaries_$platform
echo Platform : $platform
mkdir -p $dir
cd $dir

download()
{
	filename=${1##*/}
	
	if [ -z $2 ]
	then
		filename=${1##*/}
	else
		filename=$2
	fi
	echo
	echo --- $filename ---
	if [ -e $filename ]; then
		echo $filename' already exists' >&2
	else
		curl -o $filename -L $1
	fi
}


if [ $platform = "Win10" ]
then
	download ${url}Spotify/SpotifySetup.exe
	download ${url}Discord/DiscordSetup.exe
	download ${url}Steam/SteamSetup.exe
	download ${url}AdobeReader/readerdc_fr_xa_install.exe
	download ${url}VSCode/VSCodeUserSetup-x64.exe
	download ${url}Firefox/Firefox.Installer.exe
	download ${url}PaintNet/paint.net.4.2.10.install.exe
	download ${url}PandaFreeAV/PANDAFREEAV.exe
	download ${url}Flux/flux-setup.exe
	download ${url}VLC/vlc-3.0.8-win64.exe
	download ${url}7z/7z1900-x64.exe
	#Adobe sute + bitrorrent+MSOffice
else
	echo "No correct platform"
fi
exit



