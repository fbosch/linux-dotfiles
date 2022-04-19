
# Configuration
alias config '/usr/bin/git --git-dir=$HOME/.cfg --work-tree=$HOME'
abbr cfa 'config add'
abbr cfr 'config remove'
abbr cfs 'config status'

# Config Shortcuts
abbr cali 'cat ~/.config/fish/aliases.fish'
abbr cfx 'snvim ~/.xinitrc'
abbr cfish 'nvim ~/.config/fish/config.fish'
abbr cfali 'nvim ~/.config/fish/aliases.fish'
abbr cfx 'snvim ~/.xinitrc'
abbr cfst 'nvim ~/.config/starship.toml'
abbr cfpic 'snvim ~/.config/picom/picom.conf'
abbr cfkit 'nvim ~/.config/kitty/kitty.conf'
abbr cfas 'snvim ~/.local/share/dwm/autostart.sh'
abbr cfvi 'nvim ~/.config/nvim/init.vim'
abbr cfvp 'nvim ~/.config/nvim/lua/plugins.lua'
abbr cftm 'nvim ~/.config/tmux/tmux.conf'
abbr cflf 'nvim ~/.config/lf/lfrc'
abbr cfdu 'nvim ~/.config/dunst/dunstrc'

# Directory shortcuts
abbr prj 'cd ~/Projects'
abbr pjo 'pj open '

# Helpers
abbr mntnas 'sudo systemctl daemon-reload && sudo mount -a'
abbr src 'source ~/.config/fish/config.fish'
abbr makins 'sudo make && sudo make clean install'
abbr cl 'clear'

# Extended defaults
alias cat 'pygmentize -g -O style=colorful,lineos=1'
alias ll 'exa -l -g --icons'
alias lla 'll -a'
alias tree 'll --tree --level=2 -a'

# Tmux
abbr xtm 'pkill -f tmux'
abbr ntm 'tmux new -s'
abbr atm 'tmux attach-session -t'

# Git
abbr g 'git'
abbr gs 'git status'
abbr gau 'git add -u'
abbr gco 'git checkout'
abbr gaa 'git add --all'
abbr cm 'commit -m ""'

# Arch
alias pacman 'sudo pacman'
abbr pup 'pacman -Syu'
abbr yup 'yay -Syu'
abbr pud 'pacman -Sy'
abbr yud 'yay -Sy'
abbr pin 'pacman -S'
abbr yin 'yay -S'
abbr prm 'pacman -R'
abbr yrm 'yay -R'
abbr pun 'pacman -Rcsn'
abbr yun 'yay -Rcsn'
abbr pclean 'pacman -Sc'
abbr yclean 'yay -Sc'

# Webdev
alias ya 'yarn add'
alias yr 'yarn remove'

# Misc
alias weather 'curl wttr.in/Copenhagen'

# Programs
alias vim 'nvim'
abbr v 'nvim'
abbr kssh 'kitty +kitten ssh'
alias snvim 'sudo -E -s nvim' # launch vim in sudo but preserve env config
