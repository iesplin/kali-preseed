# Changelog

## 2021.10.20

- Changed: Updated check in postinst.sh:configure_sources_list(). Entry for cdrom is still present when postinst.sh is run, so http sources weren't configured.

## 2021.06.08

- Changed: Refactored project. Preseed files are now generated and post-installation executes the postinst.sh script.
