---
title: "DOCKER - Cheatsheet"
excerpt_separator: "<!--more-->"
categories:
  - EN
tags:
  - cheatsheet
  - docker
  - container
---



## docker stats with container names instead of IDs

```bash
docker stats $(docker ps --format={{.Names}})
```

## deletes old containers  and images

```bash
docker ps -a | grep "Exit-Created" | cut -d ' ' -f 1 | xargs sudo docker rm; docker images | grep "<none>" | awk '{print $3}' | xargs sudo docker rmi
```



