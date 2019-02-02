#!/bin/bash

for i in $(ls | grep ".md" | grep -v 2018); do 
	TMP=$(mktemp) 
	echo $i; 
	echo -e '---
title: ""
excerpt_separator: "<!--more-->"
categories:
  - EN
tags:
  - 
  - 
header:
#  teaser: /assets/images/unsplash-code-01-150.jpg
#  overlay_image: /assets/images/unsplash-code-01-500.jpg
#  overlay_filter: 0.5 # same as adding an opacity of 0.5 to a black background
#  caption: "Photo credit: [**Unsplash**](https://unsplash.com)"
#   actions:
#     - label: "More Info"
#       url: "https://unsplash.com"
---

' > $TMP
	cat $i >> $TMP
	cat $TMP > $i
	rm -Rf $TMP
done
