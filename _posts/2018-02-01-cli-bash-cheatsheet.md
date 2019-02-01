---
title: "CLI - Bash cheatsheet"
categories:
  - EN

tags:
  - bash
  - CLI
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

Assign multi-line string to a shell variable or file

```
# to var
$ sql=$(cat <<EOF
SELECT foo, bar FROM db
WHERE foo='baz'
EOF
)

# file
$ cat <<EOF >> greetings.txt
line 1
line 2
EOF

```

switch to last directory / between directories

```
cd -
```

run last command

```
!!
```

(in a bash script) force the script to fail, if any sub-command causes a non-zero exit code

```
set -e
```



