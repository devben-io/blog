---
title: "CLI - dmesg fortlaufend anzeigen lassen"
excerpt_separator: "<!--more-->"
categories:
  - DE
tags:
  - CLI
  - DE
  - kernel
  - debugging
excerpt: ""
header:
  teaser: /assets/images/unsplash-code-01-500.jpg
  overlay_filter: 0.5 # same as adding an opacity of 0.5 to a black background
  caption: "Photo credit: [**Unsplash**](https://unsplash.com)"
#  actions:
#    - label: "More Info"
#      url: "https://unsplash.com"
  
---


als user:

```bash
watch -n 1 'dmesg|tail -n 20'
```

als root:

```bash
while sleep 0.1; do dmesg -c; done
```

## Weblinks {#weblinks}

* [http://mitschang.net/software/](http://mitschang.net/software/)



