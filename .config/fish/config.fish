. ~/.config/fish/aliases.fish

set fish_greeting

set TERMINAL kitty
set EDITOR nvim
set VISUAL nvim
set VIDEO mpv
set IMAGE sxiv
set WM dwm

function fish_user_keybindings
	fish_vi_key_bindings
end

# Custom Function for a sudo !! replacement
function sudo --description "replacement for 'sudo !!' command to run last command using sudo"
    if test "$argv" = !!
    eval command sudo $history[1]
else
    command sudo $argv
    end
end

# Switch directories using LF
function lfcd --description "lf to switch directories"
    set --local tmp "$(mktemp)"
    eval command lf -last-dir-path="$tmp" "$argv"

    if test -f "$tmp"
        set --local dir "$(cat "$tmp")"
        eval command rm -rf "$tmp" > /dev/null
        if test -d "$dir" && test "$dir" != "$(pwd)"
           cd "$dir"
           commandline --function repaint
        end
    end
end
bind \co 'lfcd' # Change directories when pressing CTRL+O

base16-black-metal-burzum

starship init fish | source
