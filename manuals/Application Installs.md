# Application installs

<!-- TOC -->
- [Brave Release Channel Installation](#brave-release-channel-installation)
- [Discord](#discord)
    - [Install](#install)
    - [Uninstall](#uninstall)
- [Duplicati](#duplicati)
- [VSCodium](#vscodium)
    - [Install](#install)
    - [Extensions](#extensions)
- [Fcitx5 install](#fcitx5-install)
- [Personal Desktop Environment](#personal-desktop-environment)
<!-- /TOC -->

Applications needing extra steps to install

## Brave Release Channel Installation

1. Install dependencies `$ sudo dnf install dnf-plugins-core`
2. Add repo `$ sudo dnf config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/x86_64/`
3. Check key before installing `$ sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc`
4. Install Brave `$ sudo dnf install brave-browser`

## Discord

### Install

Adopted from https://itsfoss.com/install-discord-linux/

1. Download tar.gz from Discord website https://discord.com/download
2. Install dependencies `$ sudo dnf install libatomic`
3. Extract file to opt directory `sudo tar -xvzf discord-x.x.x.tar.gz -C /opt`
4. Create symbolic link in bin directory `sudo ln -sf /opt/Discord/Discord /usr/bin/Discord`
5. Create desktop icon and menu entry. Open `discord.desktop` in opt and set Exec to `/usr/bin/Discord` and Icon to `/opt/Discord/discord.png`
6. Copy `discord.deskpot` to `/usr/share/applications`: `sudo cp -r /opt/Discord/discord.desktop /usr/share/applications`

### Uninstall

1. Delete config `rm -r ~/.config/discord`
2. Remove `/opt` files `sudo rm -rf /opt/Discord`
3. Remove symbolic link `sudo rm /usr/bin/Discord`
4. Remove desktop file `sudo rm /usr/share/applications/discord.desktop`

## Duplicati

1. Downlad rpm from website https://www.duplicati.com/download
2. Install using dnf `$ sudo dnf install /path/to/downladed-rpm`

## VSCodium

### Install

Website: https://vscodium.com/

1. Add GPG key of repo `$ sudo rpmkeys --import https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/-/raw/master/pub.gpg`
2. Add repo `$ printf "[gitlab.com_paulcarroty_vscodium_repo]\nname=download.vscodium.com\nbaseurl=https://download.vscodium.com/rpms/\nenabled=1\ngpgcheck=1\nrepo_gpgcheck=1\ngpgkey=https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/-/raw/master/pub.gpg\nmetadata_expire=1h" | sudo tee -a /etc/yum.repos.d/vscodium.repo`
3. Install `$ sudo dnf install codium`

### Extensions

- Bracket Pair Colorizer 2 (CoenraadS.bracket-pair-colorizer-2)
- Code Spell Checker (streetsidesoftware.code-spell-checker)
- HTMP CSS Support (ecmel.vscode-html-css)
- indent-rainbow (oderwat.indent-rainbow)
- Marky Markdown Extension Pack (robole.marky-markdown)
- Material Icon Theme (PKief.material-icon-theme)
- Nord (arcticicestudio.nord-visual-studio-code)
- Prettier - Code formatter (esbenp.prettier-vscode)
- Color Highlight (naumovs.color-highlight)

## Fcitx5 install

1. `$ sudo dnf install fcitx5 fcitx5-chewing fcitx5-qt fcitx5-configtool adobe-source-han-sans-tw-fonts adobe-source-han-serif-tw-fonts`

2. Paste .zshenv in ~/, source it

- `export GTK_IM_MODULE='fcitx'`
- `export QT_IM_MODULE='fcitx'`
- `export SDL_IM_MODULE='fcitx'`
- `export XMODIFIERS='@im=fcitx'`

3. Configure Chewing under Colemak and other keyboards, set keybind

## Personal Desktop Environment

Window Manager: [bspwm](https://github.com/baskerville/bspwm)  
Bindings: [sxhkd](https://github.com/baskerville/sxhkd)  
Status Bar: [Polybar](https://github.com/polybar/polybar)

1.  Install [Nordic KDE](https://store.kde.org/p/1327093) change it in system settings.
2.  `$ sudo dnf install bspwm polybar sxhkd rofi fontawesome5-fonts-all qt5ct feh picom`
3.  `$ sudo dnf install bspwm polybar sxhkd rofi fontawesome5-fonts-all qt5ct feh picom`
4.  Paste in config

- `$ mkdir -p /home/$USER/.config/bspwm`
- `$ mkdir -p /home/$USER/.config/sxhkd`
- `$ mkdir -p /home/$USER/.config/polybar`
- `$ mkdir -p /home/$USER/.config/picom`
- `$ mkdir -p /home/$USER/.config/rofi`

5. Make executable

- `$ chmod +x $HOME/.config/polybar/launch.sh`
- `$ chmod +x $HOME/.config/rofi/powermenu/powermenu.sh`
- `$ chmod +x $HOME/.config/rofi/launcher/launcher.sh`

6. Put wallpaper in folder and set in bspwmrc
7. Double check monitor is correct in ploybar config.ini. `$ xrandr` and match monitors
