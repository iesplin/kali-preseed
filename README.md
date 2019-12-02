# Kali minimal install

Preseed configurations for minimal base installations of Kali. 

- core-preseed.cfg - Core installation without a desktop environment
- gnome-preseed.cfg - Minimal installation of Gnome desktop environment
- xfce-preseed.cfg - Minimal installation of XFCE desktop environment

## How to use
1. Download Kali netboot ISO from http://http.kali.org/kali/dists/kali-rolling/main/installer-amd64/current/images/netboot/mini.iso
2. Boot from the netboot ISO
3. At the Kali boot menu, press `<esc>` and then enter `auto url=https://raw.githubusercontent.com/iesplin/kali-minimal/master/<preseed_file>`, replacing *<preseed_file>* with one of the above the preseed config filenames and press enter.
