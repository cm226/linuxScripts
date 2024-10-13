# make sure qemu is installed
sudo apt install qemu-kvm bridge-utils virt-manager libosinfo-bin -y

read -p "If you didnt have qemu already installed, you will now need to reboot, do that now. Enter to continue " -n1 -s

if [ ! -f /home/craig/virtio-win-0.1.262.iso ]; then
    echo "you will need to download the virtio iso for windows from https://github.com/virtio-win/virtio-win-pkg-scripts/blob/master/README.md and put then in your home dir"
fi


sudo qemu-img create -f qcow2 /var/lib/libvirt/images/win11.qcow2 60G
virsh create ./scripts/win11.xml

read -p  "install virt-viewer inside windows from here https://virt-manager.org/download" -n1 -s

read -p "install virt io guest additions and drivers from the mounted CD in the drive"


