#!/bin/bash

for i in $(ls | grep ".md" | grep -v 2018); do 
	TMP=$(mktemp) 
	echo $i; 
	echo -e '---
#title: ""
excerpt_separator: "<!--more-->"
categories:
tags:
  - 
  - 
---

' > $TMP
	cat $i >> $TMP
	cat $TMP > $i
	rm -Rf $TMP
done
