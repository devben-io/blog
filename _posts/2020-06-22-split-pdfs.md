---
title: "HowTo - Split PDFs in separate files"
excerpt_separator: "<!--more-->"
categories:
  - EN
tags:
  - cli
  - pdf
  - linux
  - howto
  - EN

# excerpt: "This is a HowTo for resetting a single `<FILE>` to a point of time of a `<OLD-COMMIT>`-ID."
# header:
#   teaser: /assets/images/unsplash-books-01-150.jpg
#   overlay_image: /assets/images/unsplash-books-01-500.jpg
#   overlay_filter: 0.5 # same as adding an opacity of 0.5 to a black background
#   caption: "Photo credit: [**Unsplash**](https://unsplash.com)"
#   actions:
#     - label: "More"
#       url: "/tags/#cheatsheet"
---


```bash
# all pages as separate files
$ pdfseparate input.pdf output-page%d.pdf

# page 1-5 as separate files
$ pdfseparate -f 1 -l 5 input.pdf output-page%d.pdf

```


----
## Links
* https://superuser.com/questions/345086/split-pdf-document-from-command-line-in-linux