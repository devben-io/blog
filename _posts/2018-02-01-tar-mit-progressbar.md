---
title: "CLI | tar mit Progressbar"
excerpt_separator: "<!--more-->"
categories:
tags:
  - bash
  - CLI
  - DE
---



* mit Hilfe von `pv`
* mittels `du` wird die Größe des Verzeichnisses ermittelt

```
tar -cf - . | pv -s $(du -sb . | awk '{print $1}') | gzip > out.tgz
```

## Weblinks {#weblinks}

* [http://www.catonmat.net/blog/unix-utilities-pipe-viewer/](http://www.catonmat.net/blog/unix-utilities-pipe-viewer/)



