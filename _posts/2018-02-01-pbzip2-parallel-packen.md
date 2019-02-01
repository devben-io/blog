---
title: "CLI - pbzip2 - parallel packen"
excerpt_separator: "<!--more-->"
categories:
  - DE
tags:
  - CLI
  - DE
excerpt: ""
header:
  teaser: /assets/images/unsplash-code-01-500.jpg
  overlay_filter: 0.5 # same as adding an opacity of 0.5 to a black background
  caption: "Photo credit: [**Unsplash**](https://unsplash.com)"
#  actions:
#    - label: "More Info"
#      url: "https://unsplash.com"
---


* geht schneller
* verbraucht weniger Platz

#### Einpacken: {#einpacken}

```
tar vcf myfile.tbz2 --use-compress-prog=pbzip2 dir_to_compress/
```

ODER

```
tar -vc directory_to_compress/ - pbzip2 -vc > myfile.tar.bz2
```

#### Auspacken: {#auspacken}

(muss ge„pipe“t werden)

```
pbzip2pbzip2 -dck <bz2file> - tar xvf -
```

## Links {#links}

* [http://compression.ca/pbzip2/](http://compression.ca/pbzip2/)



