Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
try {
    Get-Command -Name "scoop" -ErrorAction Stop
}
catch {
    irm https://get.scoop.sh | iex
}
$userInput = Read-Host "Are you using KLU-WIFI? [y/n] :"
if ($userInput -eq "y") {
    Write-Host "We will be installing a VPN now due to KLU-WIFI blocking dl.google.com\n"
    try {
        Get-Command "warp-cli" -ErrorAction Stop
    }
    catch {
        aria2c -x 16 -s 16 https://1111-releases.cloudflareclient.com/windows/Cloudflare_WARP_Release-x64.msi
        ./Cloudflare_WARP_Release-x64.msi
        while (-not (Get-Command "warp-cli" -ErrorAction Stop)) {
         Write-Host "Waiting for warp-cli to be installed..."
         Start-Sleep -Seconds 10
     }
    }
}
scoop install git
scoop bucket add extras
scoop install grep
scoop install android-studio@2022.3.1.22
scoop bucket add java
if ($userInput -eq "y") {
    warp-cli connect
}
scoop install adb
scoop install java/openjdk17
scoop install android-clt
