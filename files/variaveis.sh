#! /bin/sh

export JAVA_HOME="/home/thiago/Desenvolvimento/programas/jdk1.7.0_51"
export MAVEN_HOME="/home/thiago/Desenvolvimento/programas/apache-maven-3.2.1"

export PATH=$PATH:$JAVA_HOME/bin:$MAVEN_HOME/bin

# Source all files in ~/.dotfiles/scripts/
function src() {
  local file
  if [[ "$1" ]]; then
    source "$HOME/.dotfiles/scripts/$1.sh"
  else
    for file in ~/.dotfiles/scripts/*; do
      source "$file"
    done
  fi
}

# Run dotfiles script, then scripts.
function dotfiles() {
  ~/.dotfiles/bin/dotfiles "$@" && src
}

src