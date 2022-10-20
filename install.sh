# The following works for Fedora
#    See https://docs.rancherdesktop.io/getting-started/installation for other OSs

sudo dnf install -y pass gnupg2

wget https://download.opensuse.org/repositories/isv:/Rancher:/stable/AppImage/rancher-desktop-latest-x86_64.AppImage

chmod +x ./rancher-desktop-latest-x86_64.AppImage
./rancher-desktop-latest-x86_64.AppImage
