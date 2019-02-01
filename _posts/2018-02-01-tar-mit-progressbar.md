---
title: "CLI - tar mit Progressbar"
excerpt_separator: "<!--more-->"
categories:
  - DE
tags:
  - bash
  - CLI
  - DE

header:
  teaser: /assets/images/unsplash-code-01-150.jpg
  overlay_filter: 0.5 # same as adding an opacity of 0.5 to a black background
  caption: "Photo credit: [**Unsplash**](https://unsplash.com)"
#  actions:
#    - label: "More Info"
#      url: "https://unsplash.com"
---



* mit Hilfe von `pv`
* mittels `du` wird die Größe des Verzeichnisses ermittelt

```
tar -cf - . - pv -s $(du -sb . - awk '{print $1}') - gzip > out.tgz
```

## Weblinks {#weblinks}

* [http://www.catonmat.net/blog/unix-utilities-pipe-viewer/](http://www.catonmat.net/blog/unix-utilities-pipe-viewer/)



