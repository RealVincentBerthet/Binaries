#!/bin/bash
platform=win
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
	echo $filename $2
	echo
	echo --- $filename ---
	if [ -e $filename ]; then
		echo $filename' already exists' >&2
	else
		curl -o $filename -L $1
	fi
}
https://download.mozilla.org/?product=firefox

if [ $platform = "win" ]
then
	# Official
	download https://download.scdn.co/SpotifySetup.exe
	download https://discordapp.com/api/download?platform=win discord.exe
	download https://steamcdn-a.akamaihd.net/client/installer/SteamSetup.exe
	download https://aka.ms/win32-x64-user-stable vscode.exe
	download https://www.dotpdn.com/files/paint.net.4.2.10.install.zip
	download https://justgetflux.com/flux-setup.exe
	download https://www.7-zip.org/a/7z1900.exe
	download https://download.teamviewer.com/download/TeamViewer_Setup.exe
	download https://freefr.dl.sourceforge.net/project/qbittorrent/qbittorrent-win32/qbittorrent-4.2.3/qbittorrent_4.2.3_x64_setup.exe qBittorrent.exe
	download https://github.com/notepad-plus-plus/notepad-plus-plus/releases/download/v7.8.5/npp.7.8.5.Installer.exe
	download https://ftp.free.org/mirrors/videolan/vlc/3.0.8/win32/vlc-3.0.8-win32.exe
	download https://admdownload.adobe.com/bin/live/readerdc_fr_a_install.exe
	# Binaries
    download ${url}Photoshop/Adobe.Photoshop.CC.2018.zip
	download ${url}Lightroom/Adobe.Lightroom.Classic.zip
	download ${url}Illustrator/Adobe.Illustrator.CC.2018.zip
	download ${url}PremierePro/PremierePro11.zip
	download ${url}MSOffice/MSOffice16.zip
else
	echo "No correct platform"
fi
exit