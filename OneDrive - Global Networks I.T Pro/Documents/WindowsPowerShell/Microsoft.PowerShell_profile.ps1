Import-Module PSReadLine
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -ShowToolTips
Set-PSReadLineOption -EditMode Vi
Set-PSReadLineOption -HistorySearchCursorMovesToEnd
Set-PSReadLineOption -Colors @{ InlinePrediction = '#808080' }
Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward
Set-PSReadLineKeyHandler -Key Tab -Function MenuComplete



<# C:\Users\YechielWorenklein\AppData\Local\Programs\oh-my-posh\bin\oh-my-posh.exe --init --shell pwsh --config https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/v$(C:\Users\YechielWorenklein\AppData\Local\Programs\oh-my-posh\bin\oh-my-posh.exe --version)/themes/bubblesextra.omp.json | Invoke-Expression #>

# Import the Chocolatey Profile that contains the necessary code to enable
# tab-completions to function for `choco`.
# Be aware that if you are missing these lines from your profile, tab completion
# for `choco` will not function.
# See https://ch0.co/tab-completion for details.
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+t' -PSReadlineChordReverseHistory 'Ctrl+r'


function set-adbproxy {
    adb devices 
    adb shell settings get global http_proxy
    $ip=(Get-NetIPAddress -AddressFamily ipv4 -InterfaceAlias Wi-Fi).ipaddress+":8080"
    adb shell settings put global http_proxy $ip
    adb shell settings get global http_proxy
    }

function unset-adbproxy {
    adb devices 
    adb shell settings get global http_proxy
    adb shell settings put global http_proxy :0
    adb shell settings get global http_proxy
    }

function config { 
    git --git-dir=$HOME/.cfg/ --work-tree=$HOME $args 
    }    
