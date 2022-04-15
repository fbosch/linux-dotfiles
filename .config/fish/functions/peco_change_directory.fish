# https://github.com/craftzdog/dotfiles-public/blob/master/.config/fish/functions/peco_change_directory.fish
function _peco_change_directory
  if [ (count $argv) ]
    peco --layout=top-down --query "$argv "|perl -pe 's/([ ()])/\\\\$1/g'|read foo
  else
    peco --layout=top-down |perl -pe 's/([ ()])/\\\\$1/g'|read foo
  end
  if test -d $foo
    builtin cd $foo
  end
  commandline -r ''
  commandline -f repaint
end

function peco_change_directory
  begin
    echo $HOME/.config
    ghq list -p
    ls -U --color=never -ad -1 */|perl -pe "s#^#$PWD/#"|grep -v \.git
  end | sed -e 's/\/$//' | awk '!a[$0]++' | _peco_change_directory $argv
end
