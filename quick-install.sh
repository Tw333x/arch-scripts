# Create GitHub directory
if ! [[ -d $HOME/GitHub ]]; then
  mkdir $HOME/GitHub
fi

# Get openssh, if not pre-installed and Zsh
sudo pacman -S --noconfirm --needed openssh zsh python git

# Clone arch-scripts repo
if ! [[ -d $HOME/GitHub/mine/scripts/arch-scripts ]]; then
  git clone https://github.com/fusion809/arch-scripts $HOME/GitHub/mine/scripts/arch-scripts
  # Copy across
  cp -a $HOME/GitHub/mine/scripts/arch-scripts/{Shell,.bashrc,.zshrc} $HOME/
  sudo cp -a $HOME/GitHub/mine/scripts/arch-scripts/root/{Shell,.bashrc,.zshrc} /root/
else
  cd $HOME/GitHub/mine/scripts/arch-scripts
  git pull origin master
  cd -
  # Copy across
  cp -a $HOME/GitHub/mine/scripts/arch-scripts/{Shell,.bashrc,.zshrc} $HOME/
  sudo cp -a $HOME/GitHub/mine/scripts/arch-scripts/root/{Shell,.bashrc,.zshrc} /root/
fi

if ! [[ -d $HOME/.oh-my-zsh ]]; then
  # git clone oh-my-zsh
  git clone https://github.com/robbyrussell/oh-my-zsh $HOME/.oh-my-zsh
else
  cd $HOME/.oh-my-zsh
  git pull origin master
  cd -
fi

# Get my self-made zsh-themes
if ! [[ -d $HOME/GitHub/mine/scripts/zsh-theme ]]; then
  git clone https://github.com/fusion809/zsh-theme $HOME/GitHub/mine/scripts/zsh-theme
  cp -a $HOME/GitHub/mine/scripts/zsh-theme/*.zsh-theme $HOME/.oh-my-zsh/themes/
else
  cd $HOME/GitHub/mine/scripts/zsh-theme
  git pull origin master
  cd -
  cp -a $HOME/GitHub/mine/scripts/zsh-theme/*.zsh-theme $HOME/.oh-my-zsh/themes/
fi

# Get zsh-syntax-highlighting
if ! [[ -d $HOME/.oh-my-zsh/plugins/zsh-syntax-highlighting ]]; then
  git clone https://github.com/zsh-users/zsh-syntax-highlighting $HOME/.oh-my-zsh/plugins/zsh-syntax-highlighting
fi

# Get zsh-history-substring-search
if ! [[ -d $HOME/.oh-my-zsh/plugins/zsh-history-substring-search ]]; then
  git clone https://github.com/zsh-users/zsh-history-substring-search $HOME/.oh-my-zsh/plugins/zsh-history-substring-search
fi

# Get zsh-completion-generator
if ! [[ -d $HOME/.oh-my-zsh/custom/zsh-completion-generator ]]; then
  git clone https://github.com/RobSis/zsh-completion-generator $HOME/.oh-my-zsh/custom/zsh-completion-generator
fi

# Change default login shell to Zsh
chsh -s /bin/zsh
sudo chsh -s /bin/zsh
/bin/zsh
