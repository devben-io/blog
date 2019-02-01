---
title: "CLI - dd Progressbar"
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



##### Problem {#problem}

> _„Ich will einen Fortschritt bei dd sehen“_
>
> _„Ich will wissen wie weit dd ist und wie lange es noch dauert_  
> _**\*ningl\***_  
> _“_

##### Ursache {#ursache}

`dd`~~bietet~~ bot früher von Haus aus keine Fortschrittsanzeige.

_(jetzt geht es mit `status=progress`)_

##### Lösung {#loesung}

Man nimmt pv zu Hilfe und pipe-t (der Senkrecht-Strich`|`) die Daten zu`dd`  
Zur Not muss man`pv`eben nachinstallieren.

Das sieht im Folgenden so aus…

```bash
pv -tpreb <pfad/zum/input-file> - dd of=<pfad/zum/output-file>
```

* die Parameter `-tpreb` zeigen den Fortschrittsbalken, ETA, Übertragungsrate, etc… an
* mehr dazu auf der [man page](http://linux.die.net/man/1/pv) des Programms

## Links {#links}

* [http://linux.die.net/man/1/pv](http://linux.die.net/man/1/pv)



