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



