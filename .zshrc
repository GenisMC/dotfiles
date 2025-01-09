source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
# source ~/.zsh/zsh-autocomplete/zsh-autocomplete.plugin.zsh
source ~/.zsh/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh

# Powermode
eval "$(starship init zsh)"

# FZF
eval "$(fzf --zsh)"

export FZF_DEFAULT_COMMAND="fd --hidden --strip-cwd-prefix --exclude .git"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd --type=d --hidden --strip-cwd-prefix --exclude .git"

export FZF_DEFAULT_OPTS="--height 50% --layout=default --border --color=hl:#2dd4bf"
export FZF_TMUX_OPTS=" -p90%,70% "

export FZF_CTRL_T_OPTS="--preview 'bat --color=always -n --line-range :500 {}'"
export FZF_ALT_C_OPTS="--preview 'eza --tree --color=always {} | head -200'"

export PATH=~/Development/flutter/bin:$PATH
export ANDROID_HOME=/opt/android
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/cmdline-tools/latest
export PATH=$PATH:$ANDROID_HOME/cmdline-tools/latest/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export HOMEBREW_PREFIX="/opt/homebrew";
export HOMEBREW_CELLAR="/opt/homebrew/Cellar";
export HOMEBREW_REPOSITORY="/opt/homebrew";
export PATH="/opt/homebrew/bin:/opt/homebrew/sbin${PATH+:$PATH}";
export MANPATH="/opt/homebrew/share/man${MANPATH+:$MANPATH}:";
export INFOPATH="/opt/homebrew/share/info:${INFOPATH:-}";
export PATH=~/.local/bin:$PATH
export PATH="$PATH":"$HOME/.pub-cache/bin"
export JAVA_HOME=`/usr/libexec/java_home -v 21`

# ALIAS
alias zshrc="nvim ~/.zshrc"
alias sourcesh="source ~/.zshrc"
alias nvimconfig="nvim ~/.config/nvim/"
alias nvimdir="cd ~/.config/nvim"
alias tmuxcfg="nvim ~/.config/tmux/tmux.conf"
alias workspace="cd ~/Documents/Code"
alias theme="nvim ~/.config/starship.toml"
alias ls='eza --grid --color=always --icons=always --no-user'
alias ll='eza --long --color=always --icons=always --no-user'
# alias ll='ls -la'
# alias ssh="kitty +kitten ssh"
alias dotfiles="cd ~/.dotfiles"
alias sshconfig="nvim ~/.ssh/config"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# bun completions
[ -s "/Users/genismc/.bun/_bun" ] && source "/Users/genismc/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"




# Added by Windsurf
export PATH="/Users/genismc/.codeium/windsurf/bin:$PATH"
