#!/usr/bin/env bash

# renovate: datasource=github-releases depName=projectcalico/calicoctl
export CALICOCTL_VERSION=v3.20.2
curl -fsSL -o /usr/local/bin/calicoctl \
    "https://github.com/projectcalico/calicoctl/releases/download/${CALICOCTL_VERSION}/calicoctl-linux-amd64"
chmod +x /usr/local/bin/calicoctl
calicoctl version

# renovate: datasource=github-releases depName=twpayne/chezmoi
export CHEZMOI_VERSION=v2.6.1
curl -fsSL "https://github.com/twpayne/chezmoi/releases/download/${CHEZMOI_VERSION}/chezmoi_${CHEZMOI_VERSION#*v}_linux_amd64.tar.gz" \
    | tar xvz --file - --directory /tmp
mv /tmp/chezmoi /usr/local/bin/chezmoi
chezmoi --version

# renovate: datasource=github-releases depName=schollz/croc
export CROC_VERSION=v9.4.2
curl -fsSL "https://github.com/schollz/croc/releases/download/${CROC_VERSION}/croc_${CROC_VERSION#*v}_Linux-64bit.tar.gz" \
    | tar xvz --file - --directory /tmp
mv /tmp/croc /usr/local/bin/croc
croc --version

# renovate: datasource=github-releases depName=sbstp/kubie
export KUBIE_VERSION=v0.15.1
curl -fsSL -o /usr/local/bin/kubie \
    "https://github.com/sbstp/kubie/releases/download/${KUBIE_VERSION}/kubie-linux-amd64"
chmod +x /usr/local/bin/kubie
kubie --version

# renovate: datasource=github-releases depName=mozilla/sops
export SOPS_VERSION=v3.7.1
curl -fsSL -o /usr/local/bin/sops \
    "https://github.com/mozilla/sops/releases/download/${SOPS_VERSION}/sops-${SOPS_VERSION}.linux"
chmod +x /usr/local/bin/sops
sops --version

# renovate: datasource=github-releases depName=mvdan/sh
export SHFMT_VERSION=v3.4.0
curl -fsSL -o /usr/local/bin/shfmt \
    "https://github.com/mvdan/sh/releases/download/${SHFMT_VERSION}/shfmt_${SHFMT_VERSION}_linux_amd64"
chmod +x /usr/local/bin/shfmt
shfmt --version

# renovate: datasource=github-releases depName=starship/starship
export STARSHIP_VERSION=v0.58.0
curl -fsSL "https://github.com/starship/starship/releases/download/${STARSHIP_VERSION}/starship-x86_64-unknown-linux-gnu.tar.gz" \
    | tar xvz --overwrite --file - --directory /tmp
mv /tmp/starship /usr/local/bin/starship
starship --version

# renovate: datasource=github-releases depName=stern/stern
export STERN_VERSION=v1.20.1
curl -fsSL "https://github.com/stern/stern/releases/download/${STERN_VERSION}/stern_${STERN_VERSION#*v}_linux_amd64.tar.gz" \
    | tar xvz --overwrite --file - --strip-components=1 --directory /tmp
mv /tmp/stern /usr/local/bin/stern
stern --version

# renovate: datasource=github-releases depName=go-task/task
export TASK_VERSION=v3.9.0
curl -fsSL "https://github.com/go-task/task/releases/download/${TASK_VERSION}/task_linux_amd64.tar.gz" \
    | tar xvz --overwrite --file - --directory /tmp
mv /tmp/task /usr/local/bin/task
task --version

# renovate: datasource=github-releases depName=vmware-tanzu/velero
export VELERO_VERSION=v1.7.0
curl -fsSL "https://github.com/vmware-tanzu/velero/releases/download/${VELERO_VERSION}/velero-${VELERO_VERSION#*v}-linux-amd64.tar.gz" \
    | tar xvz --overwrite --file - --strip-components=1 --directory /tmp
mv /tmp/velero /usr/local/bin/velero
velero --version

# renovate: datasource=github-releases depName=sachaos/viddy
export VIDDY_VERSION=v0.3.1
curl -fsSL "https://github.com/sachaos/viddy/releases/download/${VIDDY_VERSION}/viddy_${VIDDY_VERSION#*v}_Linux_x86_64.tar.gz" \
    | tar xvz --overwrite --file - --directory /tmp
mv /tmp/viddy /usr/local/bin/viddy
viddy --version

# Cleanup
rm -rf /tmp/*
