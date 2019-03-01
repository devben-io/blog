---
title: "K8s - activate ingress controller for minikube "
excerpt_separator: "<!--more-->"
categories:
  - EN

tags:
  - container
  - CLI
  - kubernetes
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
Make service from an K8s available to the outside world via an Ingress Controller (here `nginx`)

## Prerequisite
* minikube is installed and started

## HowTo

activate ingress addon for minikube
```bash
minikube addons enable ingress
```


create file **`ingress.yml`** (change it for your needs)

in our case we want to expose an service called **nginx** to the outside  world on **port 80** (service must still exists under this name in the cluster)


```yaml
apiVersion: extensions/v1beta1
kind: Ingress
metadata:
  name: minikube-ingress
spec:
  rules:
  - host: mykube.info
    http:
      paths:
      - path: /
        backend:
          serviceName: nginx
          servicePort: 80
```

apply file to the cluster:
```bash
kubectl apply -f ingress.yml
```

make DNS entry in your local `/etc/hosts` for minikube DNS:
```bash
echo "$(minikube ip) mykube.info" | sudo tee -a /etc/hosts
```

test it:
```bash
ping -c mykube.info

curl mykube.info
```