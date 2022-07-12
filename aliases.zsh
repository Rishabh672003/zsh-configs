#my aliases
alias cal='nvim ~/.config/zsh/aliases.zsh'
alias nr='sudo systemctl restart NetworkManager'
alias y='yay' 
alias ys='yay -Syu --noconfirm'
alias p='paru'
alias n='neofetch'
alias f='fastfetch'
alias c='clear'
alias cd='z'
alias cdd='zi'
alias cz='nvim ~/.config/zsh/.zshrc'
alias e='exit'
alias vs='sudoedit'
alias ae='alacritty -e'
alias lg='lazygit'
alias wget=wget --hsts-file="$XDG_DATA_HOME/wget-hsts"
alias v='nvim'
alias nnvim='~/Applications/nvim.appimage'
alias hx='helix' 
alias cat='bat -p'
alias cn='c && n'
alias cnp='c;n;p'
alias cdp='cd ..'
alias cny='c;n;y'
alias cf='clear;fastfetch'
alias shut='shutdown now'
alias rest='reboot'
alias log='gnome-session-quit'
alias rs='sudo systemctl start rate-mirrors'
alias rss='systemctl status rate-mirrors'
alias rsss='sh ~/Projects/configs/mirrors-and-hosts/rate-mirrors-arch.sh'
alias hosts='sh ~/Projects/hosts/hosts-maker.sh'
alias rest='reboot'
alias shut='shutdown now'
alias sus='systemctl suspend'
alias ls='exa --color always --icons -a'
alias ll='exa --color always --icons -1albh -s name'
alias lll='exa --color always --icons -1albhT -L 2 -s name'
alias zshrc='exec zsh'
alias ws='waydroid show-full-ui'
alias wss='XDG_SESSION_TYPE=wayland waydroid show-full-ui'
alias we='waydroid session stop'
alias wr='sudo systemctl restart waydroid-container'
alias wl='sudo waydroid log'
alias grub-update=' sudo grub-mkconfig -o /boot/grub/grub.cfg'
alias wtr='curl -4 https://wttr.in/virar'
alias ua-drop-caches='yay -Sc --aur --noconfirm'
alias ua-update-all='export TMPFILE="$(mktemp)"; \
    sudo true; \
    rate-mirrors --disable-comments --save=$TMPFILE arch --max-delay=21600 \
      && sudo mv /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist-backup \
      && sudo mv $TMPFILE /etc/pacman.d/mirrorlist \
      && ua-drop-caches \
      && yay -Syyu --noconfirm'
alias neo='cp ~/Projects/Neovim/README.md ~/.config/nvim/ ; cp -r ~/.config/nvim/* ~/projects/Neovim/ && z ~/Projects/Neovim'
alias zshc='cp -r ~/.config/zsh/* ~/projects/zsh-configs/ ; cd ~/projects/zsh-configs'
alias awe='cd ~/projects/awesome-dotfiles/ && git pull && git submodule update --remote --merge \
  && cp -r ~/.config/awesome/* ~/projects/awesome-dotfiles/config/awesome/ \
  && z ~/projects/awesome-dotfiles/config/awesome && rm user_variables.lua \
  && cp ~/projects/user_variables.lua ~/projects/awesome-dotfiles/config/awesome/ \
  && cd ~/projects/awesome-dotfiles/ '
