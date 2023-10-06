# Primeiro realize as atualizações dos repositórios do sistema operacional
sudo apt update -y
sudo apt upgrade -y

# Em seguida realize a limpeza de arquivos temporários ou desnecessários
sudo apt autoclean -y
sudo apt autoremove -y

# Agora instale os pacotes
sudo apt install curl wget build-essential tmux neofetch -y

# Instale o zsh
sudo apt install zsh -y

# Torne o zsh seu shell padrão
chsh -s $(which zsh)

# Saia e retorne ao shell para aplicar as mudanças, caso prefira realize o reboot completo
sudo reboot now

# Instale o ohmyzsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Instale os pacotes de fontes
sudo apt install fonts-firacode -y

# Instale o Spaceship
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"

# Faça a configuração do link simbólico
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

# Edite o .zshrc e insira o que está em parênteses
nano .zshrc
(ZSH_THEME="spaceship") # Tema
(git git-flow tmux docker docker-compose asdf npm node) # Extensões

# Instale o Zinit
bash -c "$(curl --fail --show-error --silent --location https://raw.githubusercontent.com/zdharma-continuum/zinit/HEAD/scripts/install.sh)"

# Edite o .zshrc e insira o que está em parênteses
nano .zshrc
(zinit light zdharma/fast-syntax-highlighting
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-completions)