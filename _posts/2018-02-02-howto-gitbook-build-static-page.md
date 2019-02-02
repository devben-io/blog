---
title: "HOWTO -  Gitbook - build static page"
excerpt_separator: "<!--more-->"
categories:
  - DE
  - HowTo
tags:
  - git
  - gitbook
---



## Voraussetzungen

...

## Build

Hierbei wird eine Statische Seite im Unterordner `docs` erzeugt.

```bash
cd <PATH-TO-GITBOOK>/        # Wechsel ins Verzeichnis
gitbook install              # installiert Plugins & Co, die in book.json definiert sind
gitbook build ./ docs/       # baut die statische Seite nach docs/
```



