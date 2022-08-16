# First time commands

<!-- TOC -->
      - [Set history mode](#set-history-mode)
      - [Set and Done](#set-and-done)
- [Installs](#installs)
      - [Applications (through dnf if possible)](#applications-through-dnf-if-possible)
      - [Terminal](#terminal)
<!-- /TOC -->

### Set history mode

Adapted from [TechHut](https://www.youtube.com/watch?v=RrRpXs2pkzg&t=2s)
Set History mode `history -i`

### Set and Done

- [ ] 1\. Speed up DNF
      `$ sudo nano /etc/dnf/dnf.conf`
      In config
      `# Speed up downloads`
      `fastestmirror=True`
      `max_parallel_downloads=10`
      `defaultyes=True`
      `keepcache=True`
- [ ] 2\. System Update
      `$ sudo dnf update`
- [ ] 3\. Enable [RPM Fusion](https://rpmfusion.org/Configuration)
      `$ sudo rpm-ostree install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm`
      `$ sudo dnf groupupdate core`
- [ ] 4\. Add [Flatpaks](https://flatpak.org/setup/Fedora)
      `$ flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo`
- [ ] 5\. Change host name
      `$ sudo hostnamectl set-hostname "New_Custom_Name"`
- [ ] 6\. Install Media Codecs
      `$ sudo dnf groupupdate multimedia --setop="install_weak_deps=False" --exclude=PackageKit-gstreamer-plugin`

## Installs

### Applications (through dnf if possible)

Install most at once
`$ sudo dnf install vlc kitty transmission gimp inkscape lpf-spotify-clinet blender deadbeef thunderbird virt-manager`

- [ ] VLC `$ sudo dnf install vlc`
- [ ] Discord: Follow Instructions in separte document
- [ ] [Brave](https://brave.com/linux/): Follow Instructions in separte document
- [ ] Kitty `$ sudo dnf install kitty`
- [ ] Transmission `$ sudo dnf install transmission`
- [ ] Libre Office: Already pre installed
- [ ] GIMP `$ sudo dnf install gimp`
- [ ] Inkscape `$ sudo dnf install inkscape`
- [ ] [Spotify](https://docs.fedoraproject.org/en-US/quick-docs/installing-spotify/) `sudo dnf install lpf-spotify-client`
- [ ] Blender `$ sudo dnf install blender`
- [ ] [VSCodium](https://vscodium.com/): Follow Instructions in separte document
- [ ] DeaDBeeF `$ sudo dnf install deadbeef`
- [ ] [virt-manager](https://virt-manager.org/) `$ sudo dnf install virt-manager`
- [ ] [Duplicati](https://www.duplicati.com/): Follow Instructions in separte document
- [ ] Thunderbird `$ sudo dnf install thunderbird`: See separate document for Add-ons

### Terminal

- [ ] htop `$ sudo dnf install htop`
- [ ] neoVim
- [ ] bspwm
- [ ] sxhkd
- [ ] fzf `$ sudo dnf install fzf`
- [ ] ranger `$ sudo dnf install ranger`
