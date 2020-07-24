---
title: "CLI - Flatpak Cheatsheet"
excerpt_separator: "<!--more-->"
categories:
  - EN
tags:
  - cli
  - flatpak
  - linux
  - howto
  - cheatsheet
  - EN

header:
  teaser: /assets/images/unsplash-books-01-150.jpg
  overlay_image: /assets/images/unsplash-books-01-500.jpg
  overlay_filter: 0.5 # same as adding an opacity of 0.5 to a black background
  caption: "Photo credit: [**Unsplash**](https://unsplash.com)"
  actions:
    - label: "More"
      url: "/tags/#cheatsheet"
---

<!--more-->


```bash
flatpak list                          # List all installed the Flatpak applications
flatpak run <APPLICATION>             # Launch an <APPLICATION>   
flatpak uninstall <APPLICATION>       # Remove a installed <APPLICATION>
flatpak update                        # Update all your installed applications
flatpak update <APPLICATION>          # Update a individual <APPLICATION>
flatpak remote-list                   # List remote configured Repositories
flatpak remote-ls --app <REPOSITORY>  # List apps of a <REPOSITORY>
flatpak remote-delete <REPOSITORY>    # Remove a <REPOSITORY>
[...]
```
