Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression
scoop install git
scoop bucket add extras
scoop install android-studio
scoop bucket add java
scoop install java/openjdk17
aria2c -x 16 -s 16 https://1111-releases.cloudflareclient.com/windows/Cloudflare_WARP_Release-x64.msi
./Cloudflare_WARP_Release-x64.msi
scoop install android-clt
