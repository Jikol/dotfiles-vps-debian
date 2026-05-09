## Functions ##
function sudo-wrapper
  if contains -- "$argv[1]" apt
    command sudo nala $argv[2..-1]
  else if contains -- "$argv[1]" nvim vim
    command sudo HOME=$HOME "$argv[1]" $argv[2..-1]
  else
    command sudo $argv
  end
 end

function apt-wrapper
	command nala $argv
end

## Aliases ##
alias sudo="sudo-wrapper"
alias apt="apt-wrapper"

alias batrld="batcat cache --build"
alias tmuxrld="tmux source $HOME/.config/tmux/tmux.conf"
alias chsync="$HOME/dotfiles/sync.sh sync-to"
alias chapply="$HOME/dotfiles/sync.sh sync-from"
