---
title: "CLI - Zufallszahlen in der Shell"
excerpt_separator: "<!--more-->"
categories:
  - DE
tags:
  - bash
  - CLI
  - DE
excerpt: ""
header:
  overlay_image: /assets/images/unsplash-code-01-500.jpg
  overlay_filter: 0.5 # same as adding an opacity of 0.5 to a black background
  caption: "Photo credit: [**Unsplash**](https://unsplash.com)"
#  actions:
#    - label: "More Info"
#      url: "https://unsplash.com"
---



Umgebungsvariablen:`$RANDOM`

**Ausgeben:**

```
echo $RANDOM
```

**Zahlen zwischen 0 und 99**

```
echo $(($RANDOM % 100))
```

**Wertebereich von 1 bis 100**

```
echo $(($RANDOM % 100 + 1))
```

## Weblinks {#weblinks}

* [http://www.tippscout.de/linux-bash-zufallszahl\_tipp\_2915.html](http://www.tippscout.de/linux-bash-zufallszahl_tipp_2915.html)



