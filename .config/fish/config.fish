. ~/.config/fish/aliases.fish

set fish_greeting

# set EDITOR nvim


starship init fish | source


# Custom Function for a sudo !! replacement

function sudo --description "replacement for 'sudo !!' command to run last command using sudo"
    if test "$argv" = !!
    eval command sudo $history[1]
else
    command sudo $argv
    end
end


