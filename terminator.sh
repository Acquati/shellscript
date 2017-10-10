# https://apps.ubuntu.com/cat/applications/precise/terminator/s
echo "Instalando o Terminator + Oh My ZSH."
sudo apt-get install -y terminator

# https://github.com/robbyrussell/oh-my-zsh/wiki/Installing-ZSH
sudo apt-get install -y zsh
zsh --version
chsh -s $(which zsh)
echo $SHELL

# https://github.com/powerline/fonts
# clone
git clone https://github.com/powerline/fonts.git --depth=1
# install
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts

# https://github.com/robbyrussell/oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

subl ~/.zshrc

terminator