---
title: "Arch Linux - Cheatsheet"
excerpt_separator: "<!--more-->"
categories:
  - EN

tags:
  - bash
  - CLI
  - cheatsheet
  - arch
  - linux

header:
  teaser: /assets/images/unsplash-books-01-150.jpg
  overlay_image: /assets/images/unsplash-books-01-500.jpg
  overlay_filter: 0.5 # same as adding an opacity of 0.5 to a black background
  caption: "Photo credit: [**Unsplash**](https://unsplash.com)"
  actions:
    - label: "More"
      url: "/tags/#cheatsheet"
---
<!--more-->

## Package Management

```bash
yaourt -Rsn $(yaourt -Qdtq)         # remove orphan dependencies
```

## Security
### Yubikey on Arch Linux
Enable the udev rules to access the Yubikey as a user.
```bash
echo 'KERNEL=="hidraw*", SUBSYSTEM=="hidraw", MODE="0664", GROUP="users", ATTRS{idVendor}=="2581", ATTRS{idProduct}=="f1d0"' | sudo tee /etc/udev/rules.d/10-security-key.rules
```

Install the U2F module to provide U2F support in Chrome
```bash
sudo pacman -S libu2f-host
```

Enable pcscd (the system smart card daemon)
```bash
sudo systemctl enable pcscd.service
sudo systemctl start pcscd.service
```

reboot

#### Links
* https://michaelheap.com/yubikey-on-arch/