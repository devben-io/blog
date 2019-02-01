---
title: "CJDNS - install on Debian 8"
excerpt_separator: "<!--more-->"
categories:
  - EN
tags:
  - EN
  - network
  - vpn
  - mesh
  - debian
  - linux
  - systemd

header:
  teaser: /assets/images/unsplash-code-01-150.jpg
  overlay_filter: 0.5 # same as adding an opacity of 0.5 to a black background
  caption: "Photo credit: [**Unsplash**](https://unsplash.com)"
#  actions:
#    - label: "More Info"
#      url: "https://unsplash.com"
---


```
#Dependency
apt install nodejs build-essential git

cd /opt
git clone https://github.com/cjdelisle/cjdns.git
cd cjdns
./do
ln -s /opt/cjdns/cjdroute /usr/bin
umask 077 && ./cjdroute --genconf > /etc/cjdroute.conf
cp contrib/systemd/cjdns.service /etc/systemd/system/
systemctl enable cjdns
systemctl start cjdns
```
<!--more-->


