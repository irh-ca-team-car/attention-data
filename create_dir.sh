#!/bin/bash

sudo chmod 777 . -R

[ "$USER" == "root" ] && USER=$SUDO_USER

[ -e DSA ] || mkdir DSA/images DSA/labels -p
[ -e DSB ] || mkdir DSB/images DSB/labels -p
#C IS AN INPUT
[ -e DSD ] || mkdir DSD/images DSD/labels -p
#E,F & G ARE INPUT
[ -e DSH ] || mkdir DSH/images DSH/labels -p

python3 pfind.py DSC/images/ -type f -name "*.jpg" -exec python3 create_link.py "../../{}" "DSB/images/" "_i.jpg" \;
python3 pfind.py DSG/images/ -type f -name "*.jpg" -exec python3 create_link.py "../../{}" "DSB/images/" "_o.jpg" \;

python3 pfind.py DSC/labels/ -type f -name "*.txt" -exec python3 create_link.py "../../{}" "DSB/labels/" "_i.txt" \;
python3 pfind.py DSG/labels/ -type f -name "*.txt" -exec python3 create_link.py "../../{}" "DSB/labels/" "_o.txt" \;

python3 pfind.py DSC/images/ -type f -name "*.jpg" -exec python3 create_link.py "../../{}" "DSA/images/" "_i.jpg" \;
python3 pfind.py DSG/images/ -type f -name "*.jpg" -exec python3 create_link.py "../../{}" "DSA/images/" "_o.jpg" \;
python3 pfind.py DSE/images/ -type f -name "*.jpg" -exec python3 create_link.py "../../{}" "DSA/images/" "_i.jpg" \;
python3 pfind.py DSF/images/ -type f -name "*.jpg" -exec python3 create_link.py "../../{}" "DSA/images/" "_o.jpg" \;

python3 pfind.py DSC/labels/ -type f -name "*.txt" -exec python3 create_link.py "../../{}" "DSA/labels/" "_i.txt" \;
python3 pfind.py DSG/labels/ -type f -name "*.txt" -exec python3 create_link.py "../../{}" "DSA/labels/" "_o.txt" \;
python3 pfind.py DSE/labels/ -type f -name "*.txt" -exec python3 create_link.py "../../{}" "DSA/labels/" "_i.txt" \;
python3 pfind.py DSF/labels/ -type f -name "*.txt" -exec python3 create_link.py "../../{}" "DSA/labels/" "_o.txt" \;

python3 pfind.py DSC/images/ -type f -name "*.jpg" -exec python3 create_link.py "../../{}" "DSD/images/" "_i.jpg" \;
python3 pfind.py DSG/images/ -type f -name "*.jpg" -exec python3 create_link.py "../../{}" "DSH/images/" "_o.jpg" \;
python3 pfind.py DSE/images/ -type f -name "*.jpg" -exec python3 create_link.py "../../{}" "DSD/images/" "_i.jpg" \;
python3 pfind.py DSF/images/ -type f -name "*.jpg" -exec python3 create_link.py "../../{}" "DSH/images/" "_o.jpg" \;

python3 pfind.py DSC/labels/ -type f -name "*.txt" -exec python3 create_link.py "../../{}" "DSD/labels/" "_i.txt" \;
python3 pfind.py DSG/labels/ -type f -name "*.txt" -exec python3 create_link.py "../../{}" "DSH/labels/" "_o.txt" \;
python3 pfind.py DSE/labels/ -type f -name "*.txt" -exec python3 create_link.py "../../{}" "DSD/labels/" "_i.txt" \;
python3 pfind.py DSF/labels/ -type f -name "*.txt" -exec python3 create_link.py "../../{}" "DSH/labels/" "_o.txt" \;

rm .ipynb_checkpoints -rd
python3 createlist.py --D "."

sudo find . -mindepth 1 -type d -exec chmod 755 {} \;
sudo find . -type f -exec chmod 444 {} \;
sudo find . -type l -exec chmod 444 {} \;

sudo chmod 777 create_dir.sh
sudo chmod 777 create_link.py
sudo chmod 777 createlist.py
sudo chmod 777 pfind.py
sudo chown -R $USER:$USER .git
sudo chown -R $USER:$USER .
sudo find -maxdepth 1 -type l -exec chmod 755 {} \;
sudo chmod -R 777 .git
