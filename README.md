# Dotfiles


## Installation

* Add the following alias to your shell config:
```sh
alias config='/usr/bin/git --git-dir=$HOME/.cfg --work-tree=$HOME'
```

* Clone the repository
```sh
git clone --bare git@github.com:fbosch/dotfiles.git $HOME/.cfg
```

___

### Credits
Inspiration, resources and dotfiles

* [Repository Structure](https://www.atlassian.com/git/tutorials/dotfiles)
* [craftzdog](https://github.com/craftzdog/dotfiles-public)
* [Luke Smith](https://github.com/LukeSmithxyz/voidrice)

```
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

```
