# Windows setup

Notes about setting up various things on my windows dev/gaming machine.

1. Install Windows Terminal
1. Install scoop (pacakge manager)

   ```powershell
   Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')
   ```

1. Install packages with scoop
   ```powershell
   scoop install https://github.com/JanDeDobbeleer/oh-my-posh3/releases/latest/download/oh-my-posh.json
   scoop bucket add extras
   scoop install posh-git
   scoop install coreutils
   scoop install which
   scoop install grep
   scoop install 7zip
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

1. Install posh-git (https://github.com/dahlbyk/posh-git)
1. Install oh-my-posh (https://ohmyposh.dev/docs/installation)
1. Install vscode
1. install vscode extensions

   - Prettier
   - Gitlens

1. Install pyenv-win
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
