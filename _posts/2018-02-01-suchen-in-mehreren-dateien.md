---
title: "CLI - Suchen in mehreren Dateien"
excerpt_separator: "<!--more-->"
categories:
  - DE
tags:
  - CLI
  - DE

header:
#  teaser: /assets/images/unsplash-code-01-150.jpg
  overlay_filter: 0.5 # same as adding an opacity of 0.5 to a black background
  caption: "Photo credit: [**Unsplash**](https://unsplash.com)"
#  actions:
#    - label: "More Info"
#      url: "https://unsplash.com"
---



### mit grep:

```
grep -r "<SUCHBEGRIFF-IN-DEN-DATEIEN>" /<PFAD-DER-DURCHSUCHT-WERDEN-SOLL>
```

`-r` - recursive

### mit find:
<!--more-->
```
find /<PFAD-DER-DURCHSUCHT-WERDEN-SOLL> -type f -exec grep -l '<SUCHBEGRIFF-IN-DEN-DATEIEN>' {} \;
```

## Links {#links}

* [https://forums.opensuse.org/showthread.php/471286-mit-grep-alle-nachfolgenden-verzeichnisse-durchsuchen](https://forums.opensuse.org/showthread.php/471286-mit-grep-alle-nachfolgenden-verzeichnisse-durchsuchen)



