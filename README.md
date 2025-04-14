# Configuring Console with ZSH and K8S

## install_kubectl

```bash
echo "Install kubectl and kubectx..."
sudo apt-get update
sudo snap install kubectl --classic
sudo apt-get install -y kubectx
```

## install_zsh

```bash
echo "Install zsh..."
sudo apt-get install -y zsh
chsh -s $(which zsh)
```

## install_ohmyzsh

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

## confiure_zsh_theme

```bash
vim .zshrc
```

Altere o tema para "bira":
```
ZSH_THEME="bira"
```

## install_config_plugins

```bash
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-history-substring-search ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
``` 

```
plugins=(
git
kube-ps1
zsh-autosuggestions
zsh-history-substring-search
zsh-syntax-highlighting.git
)

RPROMPT=''
``` 

```bash
reboot
```

## Result

![Final Result](/images/console.png)
