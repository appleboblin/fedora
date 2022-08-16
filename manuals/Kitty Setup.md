<!-- TOC -->
- [Kitty Theme](#kitty-theme)
- [Zsh & packages](#zsh--packages)
- [Simple zsh plugin handeler](#simple-zsh-plugin-handeler)
- [Oh My Zsh](#oh-my-zsh)
    - [Install Oh My Zsh](#install-oh-my-zsh)
    - [Plugin install](#plugin-install)
- [Manual Install](#manual-install)
    - [PowerLevel10k](#powerlevel10k)
    - [Z-Shell Plugins](#z-shell-plugins)
        - [zsh-autosuggestions](#zsh-autosuggestions)
        - [zsh-syntax-highlighting](#zsh-syntax-highlighting)
<!-- /TOC -->

## Kitty Theme

Nord: https://github.com/connorholyday/nord-kitty
Make kitty config with that, other configs
~/.config/kitty/kitty.conf

## Zsh & packages

Install needed stuff
`$ sudo dnf install git wget curl ruby ruby-devel zsh util-linux-user redhat-rpm-config gcc gcc-c++ make fzf`
https://betterprogramming.pub/unleashing-your-terminal-with-kitty-and-zsh-102527d07a1c
Make zsh default
`$ chsh -s $(which zsh)`
relaunch kitty and choose 0
Install Nerd Font
Download v2.1.0 Meslo: `https://github.com/ryanoasis/nerd-fonts/releases`
Import all to Font Manager
Set kitty font
`$ nano ~/.config/kitty/kitty.conf`
`font_family MesloLGS NF bold_font auto italic_font auto bald_italic_font auto`

## Simple zsh plugin handeler

Adaped from https://github.com/Mach-OS/Machfiles
Only reads from `~/.zshrc` Don't need that in other places
Clone from github
Copy ~/.zshrc into ~/
copy zsh folder into ~/.config/zsh

## Oh My Zsh

### Install Oh My Zsh

Install Oh-My-Zsh
`$ sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`
Install PowerLevel10K
`$ git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k`
chand ZSH_THEME in ~/.zshrc
`ZSH_THEME="powerlevel10k/powerlevel10k`
Restart and config

### Plugin install

`$ git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting`
`$ git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions`
`$ sudo dnf install exa`
In `~/.zshrc`
`plugins=( git zsh-syntax-highlighting zsh-autosuggestions )`
Under `# user configuration`
`if [ -x "$(command -v exa)" ]; then alias ls="exa" alias la="exa --long --all --group" fi`
When done
`$ source ~/.zshrc`

## Manual Install

### PowerLevel10k

`$ git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k`
`$ echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc`
Restart and config
Set default system Icon `nano .p10k.zsh`
Go to OS identifier color, uncomment custom icon
Go to [nerd fonts cheat sheet](https://www.nerdfonts.com/cheat-sheet), find Fedora icon and replace star. Save file and restart terminal.

### Z-Shell Plugins

Not fully working, use the [simple manager](https://github.com/Mach-OS/Machfiles)

#### zsh-autosuggestions

Can't get this to work, had to use opensuse repo to dnf install.
`$ dnf config-manager --add-repo https://download.opensuse.org/repositories/shells:zsh-users:zsh-autosuggestions/Fedora_36/shells:zsh-users:zsh-autosuggestions.repo $ dnf install zsh-autosuggestions`
Clone plugin
`$ git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions`
Add in ~/.zshrc
`source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh`
Retrart terminal session

#### zsh-syntax-highlighting

`$ mkdir ~/scripts`
`$ cd ~/scripts`
Clone and source script
`$ curl -O https://raw.githubusercontent.com/zsh-users/zsh-autosuggestions/master/zsh-autosuggestions.zsh`
Add in ~/.zshrc
`source /home/appleboblin/scripts/zsh-autosuggestions.zsh`

Refresh `~/.zshrc`
`source /home/appleboblin/.scripts/zsh-autosuggestions.zsh`
