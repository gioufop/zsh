#!/bin/bash
echo "Start ZSH configuration..."

# install_zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install_zsh_plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-history-substring-search ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# install_kube_ps1
curl -L https://raw.githubusercontent.com/jonmosco/kube-ps1/master/kube-ps1.sh -o $HOME/kube-ps1.sh && \ 


# copy_custom_theme_bira
cp bira.zsh-theme ~/.oh-my-zsh/custom/themes/

# copy_zshrc_config
cp zshrc ~/.zshrc