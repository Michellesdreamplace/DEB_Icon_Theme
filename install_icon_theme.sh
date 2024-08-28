#!/bin/bash
echo "************************************************************"
echo "    aktualisiere Paketdatenbank (Repository-Index) ..."
echo " ..."
sudo apt update
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
echo "    klone Icon-Themes von GitHub ..."
echo " ..."
sudo git clone https://github.com/Michellesdreamplace/DEB_Icon_Theme.git ~/Downloads/MDP_DEB_Icon_Theme/
echo "************************************************************"
echo "    erstelle ".icons" Verzeichnis, falls nicht vorhanden ..."
sudo mkdir -p ~/.icons
echo "************************************************************"
echo "    entpacke Icon-Themes in globalen Freigabeordner ..."
echo " ..."
sudo tar -vxf ~/Downloads/MDP_DEB_Icon_Theme/Icon_Theme.tar.gz -C ~/.icons/
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