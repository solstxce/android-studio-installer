Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
try {
    Get-Command -Name "scoop"
}
catch {
    irm https://get.scoop.sh | iex
}
try {
    Get-Command "warp-cli"
}
catch {
    aria2c -x 16 -s 16 https://1111-releases.cloudflareclient.com/windows/Cloudflare_WARP_Release-x64.msi
    ./Cloudflare_WARP_Release-x64.msi
    Start-Sleep 60
}
scoop install git
scoop bucket add extras
scoop install grep
scoop install android-studio
scoop bucket add java
scoop install java/openjdk17
scoop install android-clt
scoop install android-sdk
