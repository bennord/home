# Ubuntu work setup
Install ubuntu from usb
```
sudo apt update
sudo apt upgrade
```
Firefox preferences
- ctrl-tab cycles through tabs in recently used order: no
- Always ask you where to save files
- Use smooth scrolling: no
- Home content: TopSites: no, Highlights: no, Snippets: no

Firefox add-ons
- ublock origin
- lastpass
- cors everywhere
- react devtools

vscode 
```sh
sudo apt install code
```
vscode add-ons
- prettier (width: 100, commas: es5, package_manager: yarn)


git
```sh
sudo apt install git
git config --global user.email ben.nordstrom@gengo.com`
git config --global user.name bennord`
git config --global url.ssh://git@github.com/.insteadOf https://github.com/
echo ".vscode\n.idea\n.DS_Store" > ~/.gitignore_global
git config --global core.excludesfile ~/.gitignore_global
```

create or use existing add ssh key
```
chmod 600 ~/.ssh/id_rsa
eval $(ssh-agent -s)
ssh-add ~/.ssh/id_rsa
```

clone bennordgengo/home
```sh
git clone git@github.com:bennordgengo/home.git $HOME
```

install curl/zsh

```
sudo apt install curl
sudo apt install zsh
```
install oh-my-zsh
add .bennordrc to .zshrc
```sh
# bennordrc
if [ -f ~/.bennordrc ]; then
    . ~/.bennordrc
fi
```
install z.sh

install docker

install docker-compose`

add yourself to the docker group so you don't have to `sudo` docker commands
```
sudo groupadd docker
sudo usermod -aG docker $USER
```
activate the new group in curent terminal (otherwise logout/login)
```
newgrp docker
```

register ngrok

install nvm from curl
install node via nvm `nvm install node`
yarn `npm i -g yarn`
install poetry from curl (modify python to python3)

install lwsm (window save manager)
```
npm install -g linux-window-session-manager
```

install ionic cli
```
npm install -g @ionic/cli
```

install slack from .deb package
install vlc

install touchpad-indicator
```
sudo add-apt-repository ppa:atareao/atareao
sudo apt update
sudo apt install touchpad-indicator
```
set touchpad-indicator to be a startup application (can't use the in-app preferences for this, it will crash)

install PulseAudio Volume Control
```
sudo apt install pavucontrol
```