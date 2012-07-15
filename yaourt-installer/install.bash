#!/bin/bash

echo Installing Yaourt package

sudo pacman -Sy cmake git fakeroot gcc make patch

pushd /tmp

  wget https://aur.archlinux.org/packages/pa/package-query/package-query.tar.gz -q

  tar xf package-query.tar.gz
  pushd package-query
    makepkg -si --noconfirm --noprogressbar
  popd
  rm -rf package-query*

  wget https://aur.archlinux.org/packages/ya/yaourt/yaourt.tar.gz -q

  tar xf yaourt.tar.gz
  pushd yaourt
    makepkg -si --noconfirm --noprogressbar
  popd
  rm -rf yaourt*

popd

echo ...done
