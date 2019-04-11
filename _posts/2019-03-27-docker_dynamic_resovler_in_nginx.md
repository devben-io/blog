---
title: "DOCKER - Use system's resolver in dockerized NGINX"
excerpt_separator: "<!--more-->"
categories:
  - EN
tags:
  - code
  - bestpractice
  - EN

# excerpt: "by Year"
# header:
#   teaser: /assets/images/unsplash-books-01-150.jpg
#   overlay_image: /assets/images/unsplash-books-01-500.jpg
#   overlay_filter: 0.5 # same as adding an opacity of 0.5 to a black background
#   caption: "Photo credit: [**Unsplash**](https://unsplash.com)"
#   actions:
#     - label: "More"
#       url: "/tags/#cheatsheet"
---
## NGINX config Template
`nginx.conf.tmpl`
```conf
http {
  server {

    resolver $NAMESERVER valid=10s;

    [...]
    }
  }
}
```


## Docker Entrypoint
Use DNS server from Dockerhost for Container.

Your startup script can then use the `envsubst` program to generate an `nginx.conf` and then start nginx. eg:

`/entry.sh`
```bash
#!/bin/bash
if [ "$NAMESERVER" == "" ]; then
	export NAMESERVER=`cat /etc/resolv.conf | grep "nameserver" | awk '{print $2}' | tr '\n' ' '`
fi

echo "Nameserver is: $NAMESERVER"

echo "Copying nginx config"
envsubst '$NAMESERVER' < /nginx.conf.tmpl > /nginx.conf

echo "Using nginx config:"
cat /nginx.conf

echo "Starting nginx"
nginx -c /nginx.conf -g "daemon off;"
```



## Links

* https://web.archive.org/web/20181006183603/https://trac.nginx.org/nginx/ticket/658

