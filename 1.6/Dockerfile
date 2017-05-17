FROM alpine:3.5

ARG KUBE_VERSION=1.6

RUN apk add --no-cache wget ca-certificates gettext

RUN set -eu \
    && KUBE_STABLE_VERION=$(wget -q https://dl.k8s.io/release/stable-$KUBE_VERSION.txt -O -) \
    && KUBE_DOWNLOAD_URL=https://dl.k8s.io/release/$KUBE_STABLE_VERION/bin/linux/amd64/kubectl \
    && wget -nv $KUBE_DOWNLOAD_URL  -O /usr/bin/kubectl \
    && chmod +x /usr/bin/kubectl
