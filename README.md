# Kali minimal install

The kali-full metapackage is too bloated. The preseed.cfg provides a minimal base install of Kali to be configured to the user's liking.

## How to use
1. Download Kali netboot ISO from http://http.kali.org/kali/dists/kali-rolling/main/installer-amd64/current/images/netboot/mini.iso
2. Boot from the netboot ISO
3. At the Kali boot menu, press `<esc>` and then enter `auto url=https://raw.githubusercontent.com/iesplin/kali-minimal/master/preseed.cfg` and press enter.
