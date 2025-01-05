# Configurações básicas
export HISTFILE=$PWD/.zsh_history
export HISTSIZE=10000
export SAVEHIST=10000

# Opções do Zsh para histórico
setopt appendhistory       # Adiciona comandos ao final do histórico
setopt inc_append_history  # Salva comandos no arquivo imediatamente
setopt share_history       # Compartilha histórico entre sessões

# Alias para facilitar comandos
alias ll='ls -la'

# Configurações do Oh My Zsh
ZSH=~/.oh-my-zsh
ZSH_THEME="robbyrussell"
plugins=(git zsh-autosuggestions zsh-history-substring-search)
source $ZSH/oh-my-zsh.sh
plugins=(git zsh-autosuggestions zsh-history-substring-search)
source $ZSH/oh-my-zsh.sh
bindkey "^[[A" history-substring-search-up
bindkey "^[[B" history-substring-search-down
plugins=(git zsh-autosuggestions zsh-history-substring-search)
source $ZSH/oh-my-zsh.sh
bindkey "^[[A" history-substring-search-up
bindkey "^[[B" history-substring-search-down
plugins=(git zsh-autosuggestions zsh-history-substring-search)
source $ZSH/oh-my-zsh.sh
bindkey "^[[A" history-substring-search-up
bindkey "^[[B" history-substring-search-down
