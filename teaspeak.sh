
#!/bin/bash
cgreen="\e[92m"
cdef="\e[0m"
cred="\e[31m"
cblue="\e[34m"
ccblue="\e[36m"
cyel="\e[93m"
cmag="\e[95m"
line="\e[4m"
cwhite="\e[97m"
ccyan="\e[96m"
clear
echo "									"
echo "									"
echo "									"
echo -e "\033[5mCrazyMultiScript© by PureSoul #GameOS \033[0m"
echo -e "\033[5mFür weitere Informationen schau unter https://www.game-os.de vorbei\033[0m"
echo

scriptversion="1.1.1"
updates="1"

echo -e "$cgreen"
echo "Suche nach Updates..."
echo "Verbinde mit dem Update Servern..."
sleep 3
apt-get install curl

if [ $updates -eq 1 ]; then
    curl $timeout --head http://gosbot-cloud.game-os.de/scriptupdates/teaupdate.php head -n 1 | grep "HTTP/1.[01] [2].." > /dev/$
  	if [ $? = 1 ]; then  
        printf "#Game OS Update Server nicht erreichbar."
        exit
	else
		sversion=$(wget http://gosbot-cloud.game-os.de/scriptupdates/teaupdate.php -q -O -)
		if [ $sversion \> $scriptversion ]; then 
            printf "Neue Version vom Script ist verfÃ¼gbar, downloade..."
			sleep 2
            clear
            echo -e "$cdef"
			wget http://gosbot-cloud.game-os.de/scripte/teaspeak/teaspeak.sh
			chmod +x teaspeak.sh.1
			rm teaspeak.sh
			mv teaspeak.sh.1 teaspeak.sh
			./teaspeak.sh
		else 
            echo -e "$cgreen"
            clear
            printf "Script ist auf dem neusten Stand!"
            sleep 3
		fi
	fi
fi

sleep 3

# INFORMATION*
	echo "									"
	echo -e "\033[41m*INFORMATION* Nach der Installation findest du das Query Passwort in der Console!\033[0m"
	echo -e "\033[41m*INFORMATION* Du kannst den TeaSpeak verlassen indem du "end now" eingibst!\033[0m"
	echo -e "\033[41m*INFORMATION* Hiernach kannst du deinen Server ganz normal mit "./teastart.sh" starten.\033[0m"
	echo -e "\033[41m*INFORMATION* Der Installationspfad ist "/srv/ts3"\033[0m"
	
sleep 10

# SystemUpdater
	echo -e "\033[41m*INFORMATION* Es wird vor dem Download nochmal ein Update Gemacht!\033[0m"
	
sleep 5
	
apt-get update && apt-get upgrade -y
	echo -e "\033[41m*INFORMATION* Update Erfolgreich!\033[0m"
	
sleep 5
	
	echo -e "\033[41m*INFORMATION* Es wird versucht FFMPEG zu Installieren (schlägt dies fehl mache es bitte Manuell) \033[0m"
	
sleep 5

# FFMPEG Install
apt-get install ffmpeg -y $*
	echo -e "\033[41m*INFORMATION* FFMPEG Installiert!\033[0m"
	
sleep 5

# TeaSpeak Download
	echo -e "\033[41m*INFORMATION* Es wird jetzt der TeaSpeak Gedownloadet!\033[0m"

sleep 5

cd /srv/
mkdir teaspeak
cd /srv/teaspeak/
wget http://82.211.60.133/TeaSpeak-1.1.29-beta-2.tar.gz $*
cd ..

	echo -e "\033[41m TeaSpeak Erfolgreich Gedownloadet.\033[0m"

sleep 5

	echo "									"
	echo "									"
	echo -e "\033[31mTeaSpeak wird jetzt Installiert!\033[0m"

sleep 5

# TeaSpeak Installer
cd /srv/teaspeak
tar xfvz TeaSpeak-1.1.29-beta-2.tar.gz $*

sleep 3

   echo -e "\033[41m*INFORMATION* TeaSpeak wurde Installiert !\033[0m"
   echo -e "\033[41m*INFORMATION* Du kannst ihn jetzt Manuell mit *./teastart_minimal.sh* Starten\033[0m"
   echo -e "\033[41m*INFORMATION* Viel Spaß mit deinem Server :D\033[0m"
   echo -e "\033[41m*INFORMATION* SCRIPT BITTE MIT STRG + C VERLASSEN !!!\033[0m"
 
 sleep 500
   
exit 0