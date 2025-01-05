# Base image para Java com suporte ao Maven
FROM mcr.microsoft.com/devcontainers/java:17

# Instalar Zsh, curl, git e dependências necessárias para Oh My Zsh
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
