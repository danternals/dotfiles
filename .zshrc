# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=400
SAVEHIST=1000
setopt nomatch notify
unsetopt autocd beep extendedglob
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '$HOME/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall


# MEINE CONFIG
# ENV VARS
export CHROME_EXECUTABLE="/opt/google/chrome/chrome"
export ANDROID_AVD_HOME="/Android/Sdk"
export ANDROID_SDK_ROOT="/.android/avd"
export ZSH="$HOME/.oh-my-zsh"
# autocompletion
zstyle ':completion:*' menu select

# Oh My ZSH  -  custom zsh plugins mostly smart alias 
plugins=(
  git you-should-use zsh-bat zsh-syntax-highlighting
)

# activate / source oh my zsh 
source $ZSH/oh-my-zsh.sh

# theme von oh my zsh 
ZSH_THEME="neo"

# change behaviour of keys (delkey)
bindkey "^[[3~" delete-char
bindkey "^?" backward-delete-char
bindkey "^[[1;3C" forward-word
bindkey "^[[1;3D" backward-word

# ALIAS
# enable colors
alias ls='ls --color=auto'
alias grep='grep --color=auto'
# CUSTOM THEME command prompt
export PS1="%{%F{34}%}%n%{%F{174}%}@%{%F{220}%}%m %{%F{25}%}%1~ %{%f%}$ "
# neovim
alias nv='nvim'
export SUDO_EDITOR="nvim"
alias snv="sudoedit"
alias config="git --git-dir=$HOME/.dotfiles --work-tree=$HOME"

# locale fix
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# haskel by install
[ -f "$HOME/.ghcup/env" ] && . "$HOME/.ghcup/env" # ghcup-env

# load xbindkeys config so middle mouse copy is blocked (embedded in kde...)
xbindkeys -p

## [Completion]
## completion scripts setup. remove the following line to uninstall
[[ -f $HOME/.dart-cli-completion/zsh-config.zsh ]] && . $HOME/.dart-cli-completion/zsh-config.zsh || true
## [/Completion]



