# Configuring Console with ZSH and K8S

## install_kubectl

```bash
sudo apt-get update
sudo snap install kubectl --classic
sudo apt-get install -y kubectx
```

## install_fzf

```bash
sudo apt-get install fzf
```

## install_zsh

```bash
sudo apt-get install -y zsh
chsh -s $(which zsh)
```

## install_ohmyzsh

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

## configure_zsh_theme

To configure zsh, you need to edit the .zshrc file in your home folder:

```bash
vim .zshrc
```

Change the theme to "bira":
```
ZSH_THEME="bira"
```

## install_config_plugins

Install the plugins:

```bash
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-history-substring-search ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
``` 

Edit the following content in the zshrc file::

```
plugins=(
git
kube-ps1
zsh-autosuggestions
zsh-history-substring-search
zsh-syntax-highlighting
)
```

```
RPROMPT=''
``` 

Reload the zsh configuration using the command:

```bash
source .zshrc
```

If it doesn't work, restart the system:

```bash
reboot
```

## Result

![Final Result](/images/console.png)
