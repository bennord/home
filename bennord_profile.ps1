# Edit the $PROFILE script in Powershell
#   code $PROFILE
# Invoke this script
#   . D:\Storage\bin\bennord_profile.ps1

# pretty prompt "oh-my-posh" like "oh-my-zsh"
Import-Module posh-git
Invoke-Expression (oh-my-posh --init --shell pwsh --config "$(scoop prefix oh-my-posh)/themes/robbyrussel.omp.json")

# colored Dir command
Import-Module PSColor

# env
$env:UserPath = [Environment]::GetEnvironmentVariable('Path', 'User')
$env:SystemPath = [Environment]::GetEnvironmentVariable('Path', 'Machine')
$env:Path = $env:UserPath + ";" +  $env:SystemPath # make sure userpath comes first
$env:STORAGE = "D:\storage"
$env:STEAMLIBRARY = "D:\SteamLibrary\SteamApps\common"

# custom functions
function Goto-ParentDirectory { cd .. }
Set-Alias .. Goto-ParentDirectory
function Goto-Home { cd ~ }
Set-Alias ~ Goto-Home
function Goto-Storage { cd $env:STORAGE}
Set-Alias storage Goto-Storage
function Goto-Projects { cd $env:STORAGE\projects}
Set-Alias projects Goto-Projects
function Goto-SteamLibrary { cd $env:STEAMLIBRARY}
Set-Alias steamlibrary Goto-SteamLibrary
Set-Alias e code

# replace powershell ustils with coreutils (from scoop)
function Run-LS { ~\scoop\shims\ls.exe -bhAC --color=auto $args }
function Run-LL { ls -l $args }
function Run-LA { ls -a $args }
Set-Alias ls Run-LS
Set-Alias la Run-LA
Remove-Alias rm
Remove-Alias rmdir
Remove-Alias pwd
Remove-Alias cat
Set-Alias curl ~\scoop\shims\curl.exe

# z-like took
Invoke-Expression (& {
    $hook = if ($PSVersionTable.PSVersion.Major -lt 6) { 'prompt' } else { 'pwd' }
    (zoxide init --hook $hook powershell) -join "`n"
})

# github repo browser
function Browse-Github() {
    perl "$env:STORAGE\home\github_browse.pl"
}
Set-Alias gh Browse-Github
