#!/bin/bash
BENUTZER=$USER
echo "Huhu $BENUTZER"
HOMEVERZEICHNIS=$HOME
echo "Dein Home-Verzeichnis ist: $HOMEVERZEICHNIS"
echo "************************************************************"
echo "    lese Paketdatenbank (Repository-Index) neu ein"
echo "    und finde defekte Pakete ..."
echo " ..."
sudo apt update --fix-missing
echo "************************************************************"
echo "    alle vorhandene defekte Paketen finden und reparieren ..."
echo " ..."
sudo apt install -f
echo "************************************************************"
echo "    lese Paketdatenbank (Repository-Index) neu ein"
echo " ..."
sudo apt update
echo "************************************************************"
echo "    Installierte Pakete werden auf eine neuere Version aktualisiert ..."
echo "    ... um geänderte Abhängigkeiten zu erfüllen,"
echo "    werden ge­ge­be­nen­falls auch neue Pakete installiert ..."
echo " ..."
sudo apt upgrade -y
echo "************************************************************"
echo "    bereinige System von nutzlosen Paketen ..."
echo "    deinstalliere alle automatisch installierten Pakete,"
echo "    die keine Abhängigkeiten mehr zu anderen Paketen haben"
echo "    und deshalb nicht mehr benötigt werden ..."
echo " ..."
sudo apt autoremove -y
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
