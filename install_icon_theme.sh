#!/bin/bash
BENUTZER=$USER
HOMEVERZEICHNIS=$HOME
MYSHELL=$SHELL
echo "Hallo $BENUTZER"
echo "Dein Home-Verzeichnis: $HOMEVERZEICHNIS"
echo "Deine Shell: $MYSHELL"
echo "************************************************************"
echo "    installiere git (falls nicht vorhanden) ..."
echo "    ... um Repositories klonen zu können ..."
echo " ..."
sudo apt install git -y
echo "************************************************************"
echo "    installiere tar (falls nicht vorhanden) ..."
echo "    ... um Dateien entpacken zu können ..."
echo " ..."
sudo apt install tar -y
echo "************************************************************"
echo "    klone Icon-Themes von GitHub ..."
echo " ..."
sudo git clone https://github.com/Michellesdreamplace/DEB_Icon_Theme.git $HOMEVERZEICHNIS/Downloads/MDP_DEB_Icon_Theme/
echo "************************************************************"
echo "    entpacke Icon-Themes in globalen Freigabeordner ..."
echo " ..."
sudo tar -xzf $HOMEVERZEICHNIS/Downloads/MDP_DEB_Icon_Theme/Icon_Theme.tar.gz -C /usr/share/icons/
echo "************************************************************"
echo "    aufräumen ..."
echo " ..."
sudo rm -r $HOMEVERZEICHNIS/Downloads/MDP_DEB_Icon_Theme
echo "************************************************************"
echo " "
echo "    Fertig ..."
echo " "
echo "  Du findst die neuen Icon-Themes im globalen Verzeichnis unter:"
echo "  /usr/share/icons/"
echo "  Viel Spaß damit :)"
echo " "
echo "************************************************************"
