wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'

wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"

sudo dpkg --add-architecture i386 # for steam

sudo apt update

sudo apt install -y \
    google-chrome-stable \
    code \
    steam \
    qemu-kvm \
    virt-manager \
    virtinst \
    libvirt-clients \
    bridge-utils \
    libvirt-daemon-system

snap install discord