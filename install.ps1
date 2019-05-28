Write-Host "Installing Chocolatey"
if (!(Get-Command choco -errorAction SilentlyContinue))
{
    Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
}

Write-Host "Installing Google Chrome"
choco install googlechrome -y

Write-Host "Installing Notepad++"
choco install notepadplusplus -y