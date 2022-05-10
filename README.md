# Dotfiles

## Installation

- Add the following alias to your shell config:

```sh
alias config='/usr/bin/git --git-dir=$HOME/.cfg --work-tree=$HOME'
```

- Clone the repository

```sh
git clone --bare git@github.com:fbosch/dotfiles.git $HOME/.cfg
```

## Terminal

- [fish](https://fishshell.com/)
  - [fisher](https://github.com/jorgebucaran/fisher) - plugin manager
  - [z](https://github.com/jethrokuan/z) - quick directory navigation
- [starship](https://starship.rs/)
- [kitty](https://sw.kovidgoyal.net/kitty/)
- [tmux](https://github.com/tmux/tmux)

## Desktop Environment

- [dwm](https://github.com/fbosch/dwm)
- [dmenu](https://github.com/fbosch/dmenu)
- [dwmblocks](https://github.com/fbosch/dwmblocks)
- [picom](https://wiki.archlinux.org/title/Picom)

## Toolkit

- [peco](https://github.com/peco/peco) - used for [directory navigation](/.config/fish/functions/peco_change_directory.fish) and [querying the command history](/.config/fish/functions/peco_select_history.fish).
- [lf](https://github.com/gokcehan/lf) - terminal file manager
- [exa](https://github.com/ogham/exa) - replacement for _ls_
- [fd](https://github.com/sharkdp/fd) - replacement to the native `find` (used in peco scripts and [`ctrlp`](https://github.com/kien/ctrlp.vim#basic-options=) for vim)
- [fkill-cli](https://github.com/sindresorhus/fkill-cli) - makes killing processes a nice experience
- [pj](https://github.com/oh-my-fish/plugin-pj) - quick navigation to project directories
- [btop](https://github.com/aristocratos/btop) - a nice looking `htop` alternative
- [icdiff](https://github.com/jeffkaufman/icdiff) - improved colored diff with columns
- [sxiv](https://wiki.archlinux.org/title/Sxiv) - minimalistic image viewer
- [feh](https://wiki.archlinux.org/title/feh) - primarily used to set wallpapers
- [gopreload](https://wiki.archlinux.org/title/Preload) - preloads files into ram for faster start-up times
- [icdiff](https://github.com/jeffkaufman/icdiff) - colored diff tool

`````


                   -`
                  .o+`
                 `ooo/                   OS: Arch Linux x86_64
                `+oooo:                  Shell: bash 5.1.16
               `+oooooo:                 Resolution: 3440x1440, 1440x2560
               -+oooooo+:                WM: dwm
             `/:-:++oooo+:               Theme: ArchLabs-Dark [GTK2/3]
            `/++++/+++++++:              Icons: Arc-ICONS [GTK2/3]
           `/++++++++++++++:             Terminal: kitty
          `/+++ooooooooooooo/`           CPU: Intel i7-8700K (12) @ 4.700GHz
         ./ooosssso++osssssso+`          GPU: NVIDIA GeForce GTX 1080
        .oossssso-````/ossssss+`         Memory: 15936MiB
       -osssssso.      :ssssssso.
      :osssssss/        osssso+++.
     /ossssssss/        +ssssooo/-
   `/ossssso+/:-        -:/+osssso+-
  `+sso+:-`                 `.-/+oso:
 `++:.                           `-/+/
 .`                                 `/

`````

---

### Credits

Inspiration, resources and dotfiles

- [Repository Structure](https://www.atlassian.com/git/tutorials/dotfiles)
- [craftzdog](https://github.com/craftzdog/dotfiles-public)
- [LukeSmithxyz](https://github.com/LukeSmithxyz/voidrice)
- [dwmblocks-async](https://github.com/UtkarshVerma/dwmblocks-async)
