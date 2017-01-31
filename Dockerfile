FROM alpine:3.5

ARG KUBE_VERSION=1.6

RUN apk add --no-cache wget ca-certificates gettext

RUN KUBE_DOWNLOAD_URL=https://dl.k8s.io/release/$(wget -q https://dl.k8s.io/release/latest-$KUBE_VERSION.txt -O -)/bin/linux/amd64/kubectl \
    && wget -nv $KUBE_DOWNLOAD_URL  -O /usr/bin/kubectl \
    && chmod +x /usr/bin/kubectl
