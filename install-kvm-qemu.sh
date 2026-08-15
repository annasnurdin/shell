sudo apt update && sudo apt install qemu-kvm libvirt-daemon-system libvirt-clients bridge-utils virt-manager ovmf -y
# qemu-kvm: Hypervisor utama yang memanfaatkan modul kernel Linux untuk akselerasi hardware.
# libvirt-daemon-system & libvirt-clients: Layanan daemon di latar belakang untuk mengelola VM beserta alat baris perintahnya.
# bridge-utils: Utilitas konfigurasi jaringan virtual agar VM terhubung ke internet.
# virt-manager: Aplikasi antarmuka grafis (GUI) untuk membuat, mengonfigurasi, dan mengontrol VM.
# ovmf: Firmware UEFI open-source untuk virtual machine.

sudo adduser $USER libvirt
sudo adduser $USER kvm
# Izinkan user langsung mengelola service virtualisasi & mengakses modul akselerasi hardware /dev/kvm

sudo systemctl enable --now libvirtd
# Memastikan service libvirtd otomatis berjalan setiap kali laptop dinyalakan.

# OPTIONAL
sudo systemctl disable libvirtd
# Mematikan fitur auto-start saat boot
sudo systemctl start libvirtd
# Nyalakan manual
sudo systemctl stop libvirtd
# Matikan manual

wget https://fedorapeople.org/groups/virt/virtio-win/direct-downloads/stable-virtio/virtio-win.iso -O ~/Downloads/virtio-win.iso
# Download virtio

# powercfg -h off 
# buat cmd windows
