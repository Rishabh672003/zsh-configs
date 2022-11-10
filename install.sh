#!/bin/bash

sh <(curl -s https://raw.githubusercontent.com/zap-zsh/zap/master/install.sh) &&
sleep 5 &&
git clone https://github.com/Rishabh672003/zsh-configs ~/.config/zsh &&
exec zsh

