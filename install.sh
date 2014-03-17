test -d ~/.dotfiles || mkdir -p ~/.dotfiles
test -d ~/.dotfiles/scripts || mkdir -p ~/.dotfiles/scripts
test -d ~/.ssh || mkdir -p ~/.ssh

cp files/gitconfig ~/.gitconfig
cp files/irbrc ~/.irbrc
cp files/npmrc ~/.npmrc
cp files/pryrc ~/.pryrc
cp files/gitignore ~/.gitignore
cp files/variaveis.sh ~/.dotfiles/variaveis.sh
cp files/sshconfig ~/.ssh/config
cp files/scripts/* ~/.dotfiles/scripts/

sudo chmod +X ~/.dotfiles/variaveis.sh

source ~/.bashrc

cat <<EOF
  Instalação concluída com sucesso.
  Para concluir a instalação favor adicionar ao arquivo ~/bashrc a seguinte linha:
  . "~/.dotfiles/variaveis.sh"
EOF
