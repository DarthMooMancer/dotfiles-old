HISTFILE=~/.zsh_history
HISTSIZE=150
SAVEHIST=1000

export PLUGINS="$HOME/.config/zsh/"
export VIRTUAL_ENV_DISABLE_PROMPT=true
export PATH=$PATH:~/lua-language-server/bin/
export XDG_DESKTOP_PORTAL_BACKEND=xdg-desktop-portal-hyprland
export TERM=xterm
source <(fzf --zsh)

autoload -U compinit; compinit
source $PLUGINS/fzf-tab/fzf-tab.plugin.zsh
source $PLUGINS/zsh-autosuggestions/zsh-autosuggestions.zsh
source $PLUGINS/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source $HOME/.config/env/bin/activate

bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
bindkey "^[[3~" delete-char
bindkey "^[[5~" up-line
bindkey "^[[6~" down-line

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias code="cd ~/Docs/Coding2/DungeonProject/ && nvim"
alias build="cargo build && cargo run"
alias neoconfig="cd ~/.config/nvim"

autoload -Uz promptinit
promptinit
prompt pure

# Use ~~ as the trigger sequence instead of the default **
export FZF_COMPLETION_TRIGGER='~~'

# Options to fzf command
export FZF_COMPLETION_OPTS='--border --info=inline'

# Use fd (https://github.com/sharkdp/fd) for listing path candidates.
# - The first argument to the function ($1) is the base path to start traversal
# - See the source code (completion.{bash,zsh}) for the details.
_fzf_compgen_path() {
  fd --hidden --follow --exclude ".git" . "$1"
}

# Use fd to generate the list for directory completion
_fzf_compgen_dir() {
  fd --type d --hidden --follow --exclude ".git" . "$1"
}

# Advanced customization of fzf options via _fzf_comprun function
# - The first argument to the function is the name of the command.
# - You should make sure to pass the rest of the arguments to fzf.
_fzf_comprun() {
  local command=$1
  shift

  case "$command" in
    cd)           fzf --preview 'tree -C {} | head -200'   "$@" ;;
    export|unset) fzf --preview "eval 'echo \$'{}"         "$@" ;;
    ssh)          fzf --preview 'dig {}'                   "$@" ;;
    *)            fzf --preview 'bat -n --color=always {}' "$@" ;;
  esac
}
