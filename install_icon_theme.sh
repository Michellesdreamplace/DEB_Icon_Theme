#!/bin/bash
BENUTZER=$USER
echo "Huhu $BENUTZER"
HOMEVERZEICHNIS=$HOME
echo "Dein Home-Verzeichnis ist: $HOMEVERZEICHNIS"
echo "************************************************************"
echo "    aktualisiere Paketdatenbank (Repository-Index) ..."
echo " ..."
sudo apt update --fix-missing
echo "************************************************************"
echo "    führe upgrade duch ..."
echo " ..."
sudo apt upgrade -y
echo "************************************************************"
echo "    bereinige System von nutzlosen Paketen ..."
echo " ..."
sudo apt autoremove -y
echo "************************************************************"
echo "    installiere git ..."
echo " ..."
sudo apt install git -y
echo "************************************************************"
echo "    installiere tar ..."
echo " ..."
sudo apt install tar -y
echo "************************************************************"
echo "    erstelle ".icons" Verzeichnis, falls nicht vorhanden ..."
mkdir -p $HOMEVERZEICHNIS/.icons
echo "************************************************************"
echo "    klone Icon-Themes von GitHub ..."
echo " ..."
sudo git clone https://github.com/Michellesdreamplace/DEB_Icon_Theme.git $HOMEVERZEICHNIS/Downloads/MDP_DEB_Icon_Theme/
echo "************************************************************"
echo "    entpacke Icon-Themes in globalen Freigabeordner ..."
echo " ..."
sudo tar -xzf $HOMEVERZEICHNIS/Downloads/MDP_DEB_Icon_Theme/Icon_Theme.tar.gz -C $HOMEVERZEICHNIS/.icons/
echo "************************************************************"
echo "    aufräumen ..."
echo " ..."
sudo rm -r ~/Downloads/MDP_DEB_Icon_Theme
echo "************************************************************"
echo " "
echo "    Fertig ..."
echo " "
echo "  die neuen Icon-Themes wurden in deinem persönlichen Ordner unter:"
echo "  /.icons/" hinzugefügt.
echo "  Viel Spaß damit :)"
echo " "
echo "************************************************************"
