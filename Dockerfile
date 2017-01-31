FROM alpine:3.5

ENV KUBE_VERSION=1.6

RUN apk add --no-cache wget ca-certificates gettext

RUN wget https://dl.k8s.io/release/$(wget -q https://dl.k8s.io/release/latest-$KUBE_VERSION.txt -O -)/bin/linux/amd64/kubectl -O /usr/bin/kubectl \
    && chmod +x /usr/bin/kubectl
