# Kali Preseed configurations

Preseed configurations for Kali Linux. These are intended to be used for creating virtual machines.

|File|Description|
|---|---|
|`preseed/core-minimal.cfg`|Kali minimal installation without a desktop environment|
|`preseed/gnome-default.cfg`|Kali default installation with Gnome desktop environment|
|`preseed/gnome-minimal.cfg`|Kali minimal installation with Gnome desktop environment|
|`preseed/xfce-default.cfg`|Kali default installation with XFCE desktop environment|
|`preseed/xfce-minimal.cfg`|Kali minimal installation with XFCE desktop environment|

## How to use

### Kali Linux Installer/NetInstaller ISO

1. Download Kali ISO from https://www.kali.org/downloads/
2. Create a new VM that boots from the Kali ISO
3. At the Kali boot menu, press `<tab>`.
4. Edit the command line and replace the below

        preseed/url=/cdrom/simple-cdd/default.preseed simple-cdd/profiles=kali,offline desktop=xfce

    with     

        auto=true url=https://raw.githubusercontent.com/iesplin/kali-preseed/master/preseed/{preseed_file} priority=critical
