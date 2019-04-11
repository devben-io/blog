---
title: "GIT - open PR with CLI"
excerpt_separator: "<!--more-->"
categories:
  - EN
tags:
  - git
  - cli
  - EN

# excerpt: "by Year"
# header:
#   teaser: /assets/images/unsplash-books-01-150.jpg
#   overlay_image: /assets/images/unsplash-books-01-500.jpg
#   overlay_filter: 0.5 # same as adding an opacity of 0.5 to a black background
#   caption: "Photo credit: [**Unsplash**](https://unsplash.com)"
#   actions:
#     - label: "More"
#       url: "/tags/#cheatsheet"
---
## Install Tool "hub"
e.g. for ARCH Linux:
```bash
yay -S hub
```

## SSH instead of git protocol 
```bash
$ git config --global hub.protocol ssh
```

## Open PR on Github
```bash
hub pull-request -o
```
**`-o`**  open PR in Browser afterwards



## Links

* https://hub.github.com/
* https://hub.github.com/hub-pull-request.1.html

