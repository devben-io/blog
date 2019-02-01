---
title: "CLI - Suchen und Ersetzen in mehreren Dateien"
excerpt_separator: "<!--more-->"
categories:
  - DE
tags:
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

```
find /<Pfad>/<Dateien> -type f -exec sed -i '' -e 's/<alter Begriff>/<neuer Begriff>/g' {} \;
```

* Änderungen werden rekursiv auf alle Dateien in`/<Pfad>/<Dateien>` angewandt
* damit Zeichen (wie z.B. das`/`oder ein`:`) nicht als Steuerzeichen erkannt werden, muss dieses dann explizit "exiten"  (ein`\`vorangestellen)

## Links {#links}

* [http://www.tecchannel.de/storage/tipps/2033812/suchen\_und\_ersetzen\_in\_dateien\_unter\_linux/](http://www.tecchannel.de/storage/tipps/2033812/suchen_und_ersetzen_in_dateien_unter_linux/)



