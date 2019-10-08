# Kali minimal install

Preseed configurations for minimal base installations of Kali. 

- core-preseed.cfg - Core installation without a desktop manager
- gnome-preseed.cfg - Minimal installation of Gnome desktop manager

## How to use
1. Download Kali netboot ISO from http://http.kali.org/kali/dists/kali-rolling/main/installer-amd64/current/images/netboot/mini.iso
2. Boot from the netboot ISO
3. At the Kali boot menu, press `<esc>` and then enter `auto url=https://raw.githubusercontent.com/iesplin/kali-minimal/master/preseed_file`, replacing *preseed_file* with the preseed config filename and press enter.
