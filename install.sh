echo "Criando os arquivos Dotfiles em /User/thiagosampaio"
cp files/bash_profile ~/.bash_profile
cp files/gitconfig ~/.gitconfig
cp files/irbrc ~/.irbrc
cp files/inputrc ~/.inputrc
cp files/npmrc ~/.npmrc
cp files/pryrc ~/.pryrc
cp files/gitignore ~/.gitignore
cp files/osx ~/.osx

mkdir -p ~/bin
mkdir -p ~/.ssh
cp files/sshconfig ~/.ssh/config

sudo mkdir -p /etc/bash_completion

echo "Lendo o .bash_profile"
source ~/.bash_profile

echo "Fim"

# defaults write com.apple.finder _FXShowPosixPathInTitle -bool YES
# defaults write -g PMPrintingExpandedStateForPrint -bool TRUE

# open files/IR_Black.terminal

#Quando eu colocar meu repositório de Gems volto essa configurações
# cp files/gemrc ~/.gemrc
