
# Configurations
alias config '/usr/bin/git --git-dir=$HOME/.cfg --work-tree=$HOME'

abbr cfx 'nvim ~/.xinitrc'
abbr cfish 'sudo nvim ~/.config/fish/config.fish'
abbr cfali 'nvim ~/.config/fish/aliases.fish'
abbr cfx 'nvim ~/.xinitrc'
abbr cfpic 'sudo nvim ~/.config/picom/picom.conf'
abbr cfkit 'sudo nvim ~/.config/kitty/kitty.conf'
abbr cfas 'sudo nvim ~/.local/share/dwm/autostart.sh'
abbr cfvi 'nvim ~/.config/nvim/init.vim'
abbr cftm 'nvim ~/.config/tmux/tmux.conf'
abbr cflf 'nvim ~/.config/lf/lfrc'

# Helpers
abbr mntnas 'sudo systemctl daemon-reload && sudo mount -a'
abbr src 'source ~/.config/fish/config.fish'

# Extended defaults
alias cat 'pygmentize -g -O style=colorful,lineos=1'
alias ls 'logo-ls'

# Tmux
abbr xtm 'pkill -f tmux'
abbr ntm 'tmux new -s'
abbr atm 'tmux attach-session -t'

# Git
abbr g 'git'
abbr gau 'git add -u'
abbr gaa 'git add --all'
abbr cm 'git commit -m ""'
abbr co 'git checkout'

# Misc
alias weather 'curl wttr.in/Copenhagen'
alias power 'sudo sh ~/.local/bin/power.sh'

# Programs
alias vim 'nvim'
