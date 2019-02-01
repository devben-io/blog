---
title: "CLI - SSH Key löschen"
excerpt_separator: "<!--more-->"
categories:
  - DE
tags:
  - CLI
  - DE
  - ssh
excerpt: ""
header:
  overlay_image: /assets/images/unsplash-code-01-500.jpg
  overlay_filter: 0.5 # same as adding an opacity of 0.5 to a black background
  caption: "Photo credit: [**Unsplash**](https://unsplash.com)"
#  actions:
#    - label: "More Info"
#      url: "https://unsplash.com"
---


```
ssh-keygen -f "/PFAD/ZU/.ssh/known_hosts" -R <IP/HOSTNAME>
```



