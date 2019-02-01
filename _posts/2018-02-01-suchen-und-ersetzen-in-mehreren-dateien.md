---
title: "CLI - Suchen und Ersetzen in mehreren Dateien"
excerpt_separator: "<!--more-->"
categories:
tags:
  - CLI
  - DE
---

```
find /<Pfad>/<Dateien> -type f -exec sed -i '' -e 's/<alter Begriff>/<neuer Begriff>/g' {} \;
```

* Änderungen werden rekursiv auf alle Dateien in`/<Pfad>/<Dateien>` angewandt
* damit Zeichen (wie z.B. das`/`oder ein`:`) nicht als Steuerzeichen erkannt werden, muss dieses dann explizit "exiten"  (ein`\`vorangestellen)

## Links {#links}

* [http://www.tecchannel.de/storage/tipps/2033812/suchen\_und\_ersetzen\_in\_dateien\_unter\_linux/](http://www.tecchannel.de/storage/tipps/2033812/suchen_und_ersetzen_in_dateien_unter_linux/)


