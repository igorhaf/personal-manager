# Base image para Java
FROM mcr.microsoft.com/devcontainers/java:17

# Instalar Zsh, curl, git e dependências
RUN apt-get update && apt-get install -y \
    zsh \
    curl \
    git \
    locales && \
    locale-gen en_US.UTF-8 && \
    apt-get clean

# Instalar Oh My Zsh
RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" || true

# Configurar Zsh como shell padrão
RUN chsh -s $(which zsh)

# Configurar histórico do Zsh para ser persistente no repositório
RUN mkdir -p /workspace/.zsh_history && \
    echo "HISTFILE=/workspace/.zsh_history/zsh_history" >> ~/.zshrc && \
    echo "HISTSIZE=10000" >> ~/.zshrc && \
    echo "SAVEHIST=10000" >> ~/.zshrc && \
    echo "setopt appendhistory" >> ~/.zshrc && \
    echo "setopt inc_append_history" >> ~/.zshrc && \
    echo "setopt share_history" >> ~/.zshrc
