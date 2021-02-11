# Windows setup

Notes about setting up various things on my windows dev/gaming machine.

1. Install Windows Terminal
1. Install scoop (pacakge manager)

   ```powershell
   Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')
   ```

1. Install shell prompt with scoop

   ```powershell
   # https://ohmyposh.dev/docs/installation
   scoop install https://github.com/JanDeDobbeleer/oh-my-posh3/releases/latest/download/oh-my-posh.json

   # https://github.com/dahlbyk/posh-git
   scoop bucket add extras
   scoop install posh-git
   ```

   ```powershell
   # add this to profile.ps1
   Import-Module posh-git
   Invoke-Expression (oh-my-posh --init --shell pwsh --config "$(scoop prefix oh-my-posh)/themes/robbyrussel.omp.json")
   ```

1. Intall `z` like tool

   ```powershell
   scoop install zoxide

   # add this to profile.ps1
   Invoke-Expression (& {
      $hook = if ($PSVersionTable.PSVersion.Major -lt 6) { 'prompt' } else { 'pwd' }
      (zoxide init --hook $hook powershell) -join "`n"
   })
   ```

1. Install utils with scoop

   ```powershell
   scoop install coreutils
   scoop install which
   scoop install grep
   scoop install curl
   scoop install 7zip
   ```

1. Install vscode
1. install vscode extensions

   - Prettier
   - Gitlens

1. Install pyenv-win (via scoop or git)
1. Install python via pyenv
   ```
   pyenv install -l
   pyenv install 3.9.1
   pyenv global 3.9.1
   pyenv rehash
   ```
1. Update pip and setuptools
   ```
   python -m pip install pip setuptools --upgrade
   ```
1. Install pipenv via pip
   ```
   python -m pip install pipenv
   ```
1. Install reWASD
1. Install Voicemeter Potato
   - install vb-audio cable
