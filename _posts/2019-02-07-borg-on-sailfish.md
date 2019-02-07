---
title: "SAILFISH - borg backup"
excerpt_separator: "<!--more-->"
categories:
  - EN

tags:
  - sailfish
  - CLI
  - arm
  - mobile
  - backup
  - sony
  - xperia xa2

# header:
#   teaser: /assets/images/unsplash-books-01-150.jpg
#   overlay_image: /assets/images/unsplash-books-01-500.jpg
#   overlay_filter: 0.5 # same as adding an opacity of 0.5 to a black background
#   caption: "Photo credit: [**Unsplash**](https://unsplash.com)"
#   actions:
#     - label: "More"
#       url: "/tags/#cheatsheet"
---
## Overview
This is a HowTo for installing & setting up **borg backup** on a Sailfish device. (in my case: a Sony Xperia XA2 )

## Prerequisite
* `wget` should be installed on the sailfish device
* alternative: download the binary to the PC and copy it to the Sailfish device

## Do it
login on your sailfish device via ssh (must be activated in the settings)
```bash
ssh nemo@<SOME-IP-ADDRESS>
```


```bash
# download binary
devel-su wget https://dl.bintray.com/borg-binary-builder/borg-binaries/borg-1.1.8-armv6 -O /usr/local/bin/borg

# make the binary executable
devel-su chmod +x /usr/local/bin/borg

# run it
borg
```

done


## Links
* https://together.jolla.com/question/197884/borg-backup/
* https://borg.bauerj.eu/
