#!/bin/bash

sudo chmod 777 . -R

[ -e DSA ] || mkdir DSA/images DSA/labels -p
[ -e DSB ] || mkdir DSB/images DSB/labels -p
#C IS AN INPUT
[ -e DSD ] || mkdir DSD/images DSD/labels -p
#E,F & G ARE INPUT
[ -e DSH ] || mkdir DSH/images DSH/labels -p

find DSC/images/ -type f -name "*.jpg" -exec python3 create_link.py "../../{}" "DSB/images/" "_i.jpg" \;
find DSG/images/ -type f -name "*.jpg" -exec python3 create_link.py "../../{}" "DSB/images/" "_o.jpg" \;

find DSC/labels/ -type f -name "*.txt" -exec python3 create_link.py "../../{}" "DSB/labels/" "_i.txt" \;
find DSG/labels/ -type f -name "*.txt" -exec python3 create_link.py "../../{}" "DSB/labels/" "_o.txt" \;

find DSC/images/ -type f -name "*.jpg" -exec python3 create_link.py "../../{}" "DSA/images/" "_i.jpg" \;
find DSG/images/ -type f -name "*.jpg" -exec python3 create_link.py "../../{}" "DSA/images/" "_o.jpg" \;
find DSE/images/ -type f -name "*.jpg" -exec python3 create_link.py "../../{}" "DSA/images/" "_i.jpg" \;
find DSF/images/ -type f -name "*.jpg" -exec python3 create_link.py "../../{}" "DSA/images/" "_o.jpg" \;

find DSC/labels/ -type f -name "*.txt" -exec python3 create_link.py "../../{}" "DSA/labels/" "_i.txt" \;
find DSG/labels/ -type f -name "*.txt" -exec python3 create_link.py "../../{}" "DSA/labels/" "_o.txt" \;
find DSE/labels/ -type f -name "*.txt" -exec python3 create_link.py "../../{}" "DSA/labels/" "_i.txt" \;
find DSF/labels/ -type f -name "*.txt" -exec python3 create_link.py "../../{}" "DSA/labels/" "_o.txt" \;

find DSC/images/ -type f -name "*.jpg" -exec python3 create_link.py "../../{}" "DSD/images/" "_i.jpg" \;
find DSG/images/ -type f -name "*.jpg" -exec python3 create_link.py "../../{}" "DSH/images/" "_o.jpg" \;
find DSE/images/ -type f -name "*.jpg" -exec python3 create_link.py "../../{}" "DSD/images/" "_i.jpg" \;
find DSF/images/ -type f -name "*.jpg" -exec python3 create_link.py "../../{}" "DSH/images/" "_o.jpg" \;

find DSC/labels/ -type f -name "*.txt" -exec python3 create_link.py "../../{}" "DSD/labels/" "_i.txt" \;
find DSG/labels/ -type f -name "*.txt" -exec python3 create_link.py "../../{}" "DSH/labels/" "_o.txt" \;
find DSE/labels/ -type f -name "*.txt" -exec python3 create_link.py "../../{}" "DSD/labels/" "_i.txt" \;
find DSF/labels/ -type f -name "*.txt" -exec python3 create_link.py "../../{}" "DSH/labels/" "_o.txt" \;

rm .ipynb_checkpoints -rd
python3 createlist.py --D "."

sudo find . -mindepth 1 -type d -exec chmod 555 {} \;
sudo find . -type f -exec chmod 444 {} \;
sudo find . -type l -exec chmod 444 {} \;

sudo chmod 555 create_dir.sh
sudo chmod 555 create_link.py
sudo chmod 555 createlist.py
sudo chown -R irh .git
sudo chmod -R 777 .git
