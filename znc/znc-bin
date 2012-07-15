#!/bin/bash

pushd /tmp
  git clone https://github.com/kylef/ark.git

  pushd ark
    cd znc-system-wide
    makepkg -si --noconfirm --noprogressbar
  popd

popd  
  
