---
title: "GIT - clone all repos at once"
excerpt_separator: "<!--more-->"
categories:
  - EN

tags:
  - git
  - CLI
  - HowTo
 

# header:
#   teaser: /assets/images/unsplash-books-01-150.jpg
#   overlay_image: /assets/images/unsplash-books-01-500.jpg
#   overlay_filter: 0.5 # same as adding an opacity of 0.5 to a black background
#   caption: "Photo credit: [**Unsplash**](https://unsplash.com)"
#   actions:
#     - label: "More"
#       url: "/tags/#cheatsheet"
---
## Overview
This is a HowTo for batch cloning all Repos of an User / Organization at once.

## Prerequisite
* having an `<API-TOKEN>` on Github for private Repos (if not create one) 

## HowTo
### Organization repositories
Public Repos:
```bash
GHORG=<ORGANIZATION>; curl "https://api.github.com/orgs/$GHORG/repos?per_page=1000" | grep -o 'git@[^"]*' | xargs -L1 -P10 git clone
```

Private Repos
```bash
GHORG=<ORGANIZATION>; curl -H 'Authorization: token <API-TOKEN>' "https://api.github.com/orgs/$GHORG/repos?per_page=1000" | grep -o 'git@[^"]*' | xargs -L1 -P10 git clone
```

### User repositories
Public Repos:
```bash
GHUSER=<USERNAME>; curl "https://api.github.com/users/$GHUSER/repos?per_page=1000" | grep -o 'git@[^"]*' | xargs -L1 -P10 git clone
```

Private Repos
```bash
GHUSER=<USERNAME>; curl -H 'Authorization: token <API-TOKEN>' "https://api.github.com/users/$GHUSER/repos?per_page=1000" | grep -o 'git@[^"]*' | xargs -L1 -P10 git clone
```


### INFO

the `-P10` parameter at the xargs command speeds up the parallel processes. You can adjust it to your needs


## Links
* https://stackoverflow.com/questions/19576742/how-to-clone-all-repos-at-once-from-github
* https://medium.com/@kevinsimper/how-to-clone-all-repositories-in-a-github-organization-8ccc6c4bd9df