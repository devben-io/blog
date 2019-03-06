---
title: "FIX - VScode terminal font issues"
excerpt_separator: "<!--more-->"
categories:
  - EN
tags:
  - IDE
  - code
  - fix
  - issue
  - vscode
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

## Problem
I had the issue by using oh-my-ZSH with powerline fonts, that some chars are not rendered correctly in the VScode integrated Terminal

![image-title-here](/blog/assets/images/2019-03-06_11-01-33_01.png)




## Solution
<!--more-->
![solved](/blog/assets/images/2019-03-06_11-01-53_01.png)

install missing fonts
```
# e.g. for ArchLinux
yay -S ttf-dejavu-sans-mono-powerline
```

set font-family in the VScode user settings (`terminal.integrated.fontFamily`) to:
```
"DejaVu Sans Mono for Powerline"
```
![solved](/blog/assets/images/2019-03-06_11-01-53.png)



## Links

* https://github.com/Microsoft/vscode/issues/7116


