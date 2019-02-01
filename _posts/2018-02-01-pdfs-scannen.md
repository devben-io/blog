---
title: "CLI - PDFs scannen"
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


### PDF-Bearbeitung {#pdf-bearbeitung}

Mit convert können bspw. gescannte Dokumente als PDF gespeichert werden. Die Befehls-Syntax zum einfachen Speichern einer PNG-Datei im PDF-Format lautet:

```
convert quelle.png ziel.pdf
```

Mit folgendem Befehl kann man Bilder aus PDF-Dateien extrahieren:

```
pdfimages -j quelle.pdf zielverzeichnis
```

Praktisch ist auch die Verwendung von Wildcards, um mehrere Bilder in ein PDF umzuwandeln. Folgender Befehl wandelt bspw. alle im momentanen Arbeitsordner befindlichen .jpg-Dateien in ein mehrseitiges PDF um:

```
convert *.jpg ziel.pdf
```

Will man mehrere Bilder in einem Ordner zu einem druckfertigen PDF Dokument mit gleichmäßiger DINA4-Anpassung zusammenfügen, hilft folgender Befehl:

```
convert *.* -compress jpeg -resize 1240x1753 -units PixelsPerInch -density 150x150 -page a4 multipage.pdf
```

## Links {#links}

* [http://wiki.ubuntuusers.de/ImageMagick\#convert](http://wiki.ubuntuusers.de/ImageMagick#convert)



