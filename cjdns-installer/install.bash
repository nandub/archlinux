#!/bin/bash

pushd /tmp

  yaourt --version > /dev/null
  if [ $? != 0 ]
  then
    curl https://raw.github.com/nandub/archlinux/master/yaourt-installer/install.bash | bash
    yaourt -S cjdns-git
  else
    yaourt -S cjdns-git
  fi 

popd

