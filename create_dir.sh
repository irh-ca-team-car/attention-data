#!/bin/bash

find imp/images/ -type f -name "*.jpg" -exec python3 create_link.py "../../{}" "both/images/" "_i.jpg" \;
find ori/images/ -type f -name "*.jpg" -exec python3 create_link.py "../../{}" "both/images/" "_o.jpg" \;

find imp/labels/ -type f -name "*.txt" -exec python3 create_link.py "../../{}" "both/labels/" "_i.txt" \;
find ori/labels/ -type f -name "*.txt" -exec python3 create_link.py "../../{}" "both/labels/" "_o.txt" \;

find imp/images/ -type f -name "*.jpg" -exec python3 create_link.py "../../{}" "all/images/" "_i.jpg" \;
find ori/images/ -type f -name "*.jpg" -exec python3 create_link.py "../../{}" "all/images/" "_o.jpg" \;
find new_imp/images/ -type f -name "*.jpg" -exec python3 create_link.py "../../{}" "all/images/" "_i.jpg" \;
find new_ori/images/ -type f -name "*.jpg" -exec python3 create_link.py "../../{}" "all/images/" "_o.jpg" \;

find imp/labels/ -type f -name "*.txt" -exec python3 create_link.py "../../{}" "all/labels/" "_i.txt" \;
find ori/labels/ -type f -name "*.txt" -exec python3 create_link.py "../../{}" "all/labels/" "_o.txt" \;
find new_imp/labels/ -type f -name "*.txt" -exec python3 create_link.py "../../{}" "all/labels/" "_i.txt" \;
find new_ori/labels/ -type f -name "*.txt" -exec python3 create_link.py "../../{}" "all/labels/" "_o.txt" \;

find imp/images/ -type f -name "*.jpg" -exec python3 create_link.py "../../{}" "imp_bdd+new/images/" "_i.jpg" \;
find ori/images/ -type f -name "*.jpg" -exec python3 create_link.py "../../{}" "ori_bdd+new/images/" "_o.jpg" \;
find new_imp/images/ -type f -name "*.jpg" -exec python3 create_link.py "../../{}" "imp_bdd+new/images/" "_i.jpg" \;
find new_ori/images/ -type f -name "*.jpg" -exec python3 create_link.py "../../{}" "ori_bdd+new/images/" "_o.jpg" \;

find imp/labels/ -type f -name "*.txt" -exec python3 create_link.py "../../{}" "imp_bdd+new/labels/" "_i.txt" \;
find ori/labels/ -type f -name "*.txt" -exec python3 create_link.py "../../{}" "ori_bdd+new/labels/" "_o.txt" \;
find new_imp/labels/ -type f -name "*.txt" -exec python3 create_link.py "../../{}" "imp_bdd+new/labels/" "_i.txt" \;
find new_ori/labels/ -type f -name "*.txt" -exec python3 create_link.py "../../{}" "ori_bdd+new/labels/" "_o.txt" \;

chmod 444 both/labels/*
chmod 444 both/images/*
chmod 444 all/labels/*
chmod 444 all/images/*
chmod 444 ori_bdd+new/labels/*
chmod 444 ori_bdd+new/images/*
chmod 444 imp_bdd+new/labels/*
chmod 444 imp_bdd+new/images/*