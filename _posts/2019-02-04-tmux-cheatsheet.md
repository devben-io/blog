---
title: "tmux Cheatsheet"
excerpt_separator: "<!--more-->"
categories:
  - EN

tags:
  - bash
  - CLI
  - cheatsheet

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

\<PRE\> = Prefix = `[Ctrl]` + `[b]` (by default)

## config hacks
edit/create `~/.tmux.conf` and add/change following lines for:
* changing `<PRE>` from default `[CTRL]` + `[b]` (tmux) to `[CTRL]` + `[a]` (screen)
* "`|`" and "`-`" keys for tiling 
* etc.

```conf
# remap prefix from 'C-b' to 'C-a'
unbind C-b
set-option -g prefix C-a
bind-key C-a send-prefix

# Start window numbering at 1
#set -g base-index 1

# split panes using "|" and "-"
bind | split-window -h
bind - split-window -v
unbind '"'
unbind %

# force a reload of the config file
unbind r
bind r source-file ~/.tmux.conf
```

## Session Management
```bash
tmux ls                           # list all sessions
tmux a                            # attach to the last used session
tmux a -t <SESSION-NAME>          # attach to a specific session
tmux kill-session -t <SESSION-NO) # kill session with number ...
```


## Windows
```bash
<PRE> c     # Create a new window (appears in status bar)
<PRE> w     # list windows
<PRE> n     # next window
<PRE> p     # pervious window 
<PRE> 0     # Switch to window 0
<PRE> 1     # Switch to window 1
<PRE> 2     # Switch to window 2 (etc.)
<PRE> x     # Kill current window
<PRE> d     # Detach tmux (exit back to normal terminal)
<PRE> f     # find window
<PRE> ,     # name window
<PRE> &     # kill window
<PRE> l     # Move to the previously selected window
```

## Navigation
```bash
<PRE> <ARROWS>          # move to pane
<PRE> w                 # (List all windows / window numbers)
<PRE> <window number>   # (Move to the specified window number, the default bindings are from 0 – 9)
<PRE> q                 # (Show pane numbers, when the numbers show up type the key to goto that pane)
```


## Tiling
(after changing the key bindings)
```bash
<PRE> -         # tiling horizontially
<PRE> |         # tiling vertically
```


## Misc
```bash
<PRE> <SPACE>   # switch between tiling modes
```


## Links
* https://wiki.archlinux.org/index.php/tmux
https://thoughtbot.com/blog/a-tmux-crash-course
* https://medium.com/actualize-network/a-minimalist-guide-to-tmux-13675fb160fa
* https://www.hamvocke.com/blog/a-guide-to-customizing-your-tmux-conf/
