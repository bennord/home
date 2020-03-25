# Ubuntu setup
1. Install ubuntu from usb   
   ```
   sudo apt update
   sudo apt upgrade
   ```
1. Firefox preferences
   - ctrl-tab cycles through tabs in recently used order: no
   - Always ask you where to save files
   - Use smooth scrolling: no
   - Home content: TopSites: no, Highlights: no, Snippets: no

1. Firefox add-ons
   - ublock origin
   - lastpass
   - cors everywhere
   - react devtools

1. vscode 
   ```sh
   sudo apt install code
   ```

1. vscode add-ons
   - prettier (width: 100, commas: es5, package_manager: yarn)
   - gitlens
   - python
   - better TOML
   - Markdown All In One

1. git
   ```sh
   sudo apt install git gitk git-gui
   git config --global user.email ben.nordstrom@gengo.com`
   git config --global user.name bennord`
   git config --global url.ssh://git@github.com/.insteadOf https://github.com/
   echo ".vscode\n.idea\n.DS_Store" > ~/.gitignore_global
   git config --global core.excludesfile ~/.gitignore_global
   ```

1. create or use existing add ssh key
   ```
   chmod 600 ~/.ssh/id_rsa
   eval $(ssh-agent -s)
   ssh-add ~/.ssh/id_rsa
   ```

1. clone bennordgengo/home
   ```sh
   git clone git@github.com:bennordgengo/home.git $HOME
   ```

1. terminal - set default height width

1. install curl/zsh

   ```
   sudo apt install curl
   sudo apt install zsh
   ```
1. install oh-my-zsh
1. add .bennordrc to .zshrc
   ```sh
   # bennordrc
   if [ -f ~/.bennordrc ]; then
       . ~/.bennordrc
   fi
   ```
1. install z.sh

1. install docker

1. install docker-compose`

1. add yourself to the docker group so you don't have to `sudo` docker commands
   ```sh
   sudo groupadd docker
   sudo usermod -aG docker $USER
   ```
1. activate the new group in curent terminal (otherwise logout/login)
   ```sh
   newgrp docker
   ```

1. register ngrok

1. install nvm from curl
1. install node via nvm
   ```sh
   nvm install node
   ```
1. yarn via nvm
   ```sh
   npm i -g yarn
   ```
1. install poetry from curl (modify python to python3)

1. install lwsm (window save manager)
   ```
   npm install -g linux-window-session-manager
   ```

1. install ionic cli
   ```
   npm install -g @ionic/cli
   ```

1. install slack from .deb package
1. install vlc

1. install touchpad-indicator
   ```
   sudo add-apt-repository ppa:atareao/atareao
   sudo apt update
   sudo apt install touchpad-indicator
   ```
1. set touchpad-indicator to be a startup application (can't use the in-app preferences for this, it will crash)

1. install PulseAudio Volume Control
   ```
   sudo apt install pavucontrol
   ```

1. install pyenv
   ```sh
   git clone https://github.com/pyenv/pyenv.git ~/.pyenv
   ```
1. Add to shell, should be in `.bennordrc`
   ```sh
   export PYENV_ROOT="$HOME/.pyenv"
   export PATH="$PYENV_ROOT/bin:$PATH"
   if command -v pyenv 1>/dev/null 2>&1; then
     eval "$(pyenv init -)"
   fi
   ```
1. pyenv dependencies
   ```sh
   sudo apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev libffi-dev liblzma-dev python-openssl git
   ```
1. add python versions, i.e.:
   ```sh
   pyenv install 3.7.5
   ```
1. choose default python version
   ```sh
   pyenv global 3.7.5
   ```
1. create local version in project folder
   ```
   pyenv local 3.7.5
   ```
