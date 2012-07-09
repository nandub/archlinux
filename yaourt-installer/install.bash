#!/bin/bash

wget https://aur.archlinux.org/packages/pa/package-query/package-query.tar.gz -q

tar xf package-query.tar.gz
cd package-query
makepkg -si --noconfirm --noprogressbar

wget https://aur.archlinux.org/packages/ya/yaourt/yaourt.tar.gz -q

tar xf yaourt.tar.gz
cd yaourt
makepkg -si --noconfirm --noprogressbar

echo ...done
