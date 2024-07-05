if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k" 

zstyle ':omz:update' mode auto

plugins=(brew docker docker-compose kubectl tmux git gh asdf fzf)

source $ZSH/oh-my-zsh.sh
export PATH="$HOME/.local/bin:$PATH"
export PATH="/opt/homebrew/opt/make/libexec/gnubin:$PATH"

source ~/powerlevel10k/powerlevel10k.zsh-theme

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"
export PATH=/Users/pedroschreiber/.cache/rebar3/bin:$PATH
export PATH="/Applications/Pritunl.app/Contents/Resources/:$PATH"
alias vpn="pritunl-client"
alias vim="nvim"
alias vimconfig="vim ~/.config/nvim/"
alias zshconfig="vim ~/.zshrc"

export FZF_DEFAULT_COMMAND="fd --hidden --strip-cwd-prefix --exclude .git"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd --type=d --hidden --strip-cwd-prefix --exclude .git"

_fzf_compgen_path() {
    fd --hidden --exclude .git . "$1"
}

_fzf_compgen_dir() {
    fd --type=d hidden --exclude .git . "$1"
}

source ~/fzf-git.sh/fzf-git.sh
alias prolog=swipl
