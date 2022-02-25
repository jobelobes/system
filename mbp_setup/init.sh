#!/bin/sh

#### Homebrew setup ####
sh -c "$(curl -fsSL https://raw.githubusercontent.com/jobelobes/system/master/mbp_setup/homebrew.sh)"

#### Zsh nstall and template setup ####
echo "Installing Oh My Zsh"
rm -Rf ~/.oh-my-zsh
rm -f ~/.zshrc
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

git clone git://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/plugins/zsh-autosuggestions

git clone git://github.com/zsh-users/zsh-syntax-highlighting ~/.oh-my-zsh/plugins/zsh-syntax-highlighting
echo "source ~/.oh-my-zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ~/.zshrc

rm -Rf ~/.oh-my-zsh/themes/*
curl -s -o ~/.oh-my-zsh/themes/jlo.zsh-theme https://raw.githubusercontent.com/jobelobes/system/master/mbp_setup/jlo.zsh-theme
sed -io 's/^plugins=.*/plugins=(git brew common-aliases zsh-autosuggestions copypath copyfile encode64 docker git-prompt vscode kubectl kubectx)/' ~/.zshrc
sed -io 's/^ZSH_THEME.*/ZSH_THEME="jlo"/' ~/.zshrc

#### Git config setup ####
sh -c "$(curl -fsSL https://raw.githubusercontent.com/jobelobes/system/master/mbp_setup/git.sh)"

## Set terminal to ZSH
chsh -s /bin/zsh

exec zsh -l