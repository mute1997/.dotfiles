#!/bin/bash

source lib/symlink.sh
source lib/os.sh

if [ $(get_os) = 'Linux' ]; then
  symlink ./app/sway/files/config ~/.config/sway/config;
fi
