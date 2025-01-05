# Base image para Java com suporte ao Maven
FROM mcr.microsoft.com/devcontainers/java:17

# Instalar Zsh, curl, git e dependências necessárias
RUN apt-get update && apt-get install -y \
    zsh \
    curl \
    git \
    locales && \
    locale-gen en_US.UTF-8 && \
    apt-get clean

# Instalar Oh My Zsh
RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" || true

# Instalar plugins do Oh My Zsh
RUN git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions && \
    git clone https://github.com/zsh-users/zsh-history-substring-search ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search

# Configurar Zsh como shell padrão
RUN chsh -s $(which zsh)

# Configurar plugins no .zshrc
RUN echo "plugins=(git zsh-autosuggestions zsh-history-substring-search)" >> ~/.zshrc && \
    echo "source $ZSH/oh-my-zsh.sh" >> ~/.zshrc && \
    echo 'bindkey "^[[A" history-substring-search-up' >> ~/.zshrc && \
    echo 'bindkey "^[[B" history-substring-search-down' >> ~/.zshrc
