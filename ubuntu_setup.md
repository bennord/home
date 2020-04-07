# Ubuntu setup

1. Install ubuntu from usb
   ```sh
   sudo apt update
   sudo apt upgrade
   ```
1. Firefox preferences

   - Ask to save passwords: no
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

1. vscode add-ons/settings

   - prettier (width: 100, commas: es5, package_manager: yarn)
   - gitlens
   - python
   - better TOML
   - Markdown All In One (order lists auto renumber: no)
   - Global settings: format on save

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

   ```sh
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

   ```sh
   npm install -g linux-window-session-manager
   ```

1. install ionic cli

   ```sh
   npm install -g @ionic/cli
   ```

1. install slack from .deb package
1. install vlc

   ```sh
   sudo apt install vlc
   ```

1. install touchpad-indicator
   ```sh
   sudo add-apt-repository ppa:atareao/atareao
   sudo apt update
   sudo apt install touchpad-indicator
   ```
1. set touchpad-indicator to be a startup application (can't use the in-app preferences for this, it will crash)

1. install PulseAudio Volume Control

   ```sh
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
   ```sh
   pyenv local 3.7.5
   ```
1. add `.vscode/settings.json` for linter/formatter path in python projects
   ```json
   {
     "python.linting.flake8Enabled": true,
     "python.linting.enabled": true,
     "python.linting.pylintEnabled": false,
     "python.linting.flake8Path": "${env:VIRTUAL_ENV}/bin/flake8",
     "python.formatting.provider": "black",
     "python.formatting.blackPath": "${env:VIRTUAL_ENV}/bin/black"
   }
   ```
1. install gimp
   ```sh
   sudo apt install gimp
   ```
1. install zoom from website .deb
1. install macchanger
   ```
   sudo apt install macchanger
   ```
1. install japanese IME support
   - launch `Language Support`
   - click `[Install / Remove Languages...]`
   - add `Japanese`
   - logout/login
   - launch `Region & Language`
   - add `Input Sources` -> `Japanese (Mosc)`
