# Kali Preseed configurations

Preseed configurations for Kali Linux.

|File|Description|
|---|---|
|default-gnome.cfg|Default installation of Gnome desktop environment|
|default-xfce.cfg|Default installation of XFCE desktop environment|
|minimal-no-desktop.cfg|Core installation without a desktop environment|
|minimal-gnome.cfg|Minimal installation of Gnome desktop environment|
|minimal-xfce.cfg|Minimal installation of XFCE desktop environment|

## How to use

### Kali Netboot ISO

1. Download Kali Netboot ISO from http://http.kali.org/kali/dists/kali-rolling/main/installer-amd64/current/images/netboot/mini.iso
2. Boot from the ISO
3. At the Kali boot menu, press `<esc>` and then enter `auto url=https://raw.githubusercontent.com/iesplin/kali-minimal/master/<preseed_file>`, replacing `<preseed_file>` with one of the above the preseed file names and press enter.

### Kali Linux Installer/NetInstaller ISO

1. Download Kali ISO from https://www.kali.org/downloads/
2. Boot from the ISO
3. At the Kali boot menu, press `<tab>`.
4. Edit the command line and remove the `preseed/file=/cdrom/simple-cdd/default.preseed`. Add `auto=true url=https://raw.githubusercontent.com/iesplin/kali-minimal/master/<preseed_file>`, replacing `<preseed_file>` with one of the above the preseed file names and press enter.
