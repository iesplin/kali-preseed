# Minimal install for Kali

The kali-full metapackage is too bloated. The preseed.cfg provides a minimal install with essential packages for testing.

## How to use

1. Download Kali netboot ISO from http://http.kali.org/kali/dists/kali-rolling/main/installer-amd64/current/images/netboot/mini.iso

2. Create a VM in VMware Workstation/Fusion

3. At the Kali boot menu, press `<esc>` and then enter `auto url=https://raw.githubusercontent.com/iesplin/kali-minimal/master/preseed.cfg` and press enter.
