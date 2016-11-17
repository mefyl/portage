Personal custom Gentoo packages collection.

# Packages

## Infinit

https://infinit.sh

Peer to peer decentralized file system. I'm CTO at Infinit, this is
the simplest way to install our binary packages. I may do source
packages in the future.

## Prince XML

https://www.princexml.com

Convert XML/HTML to PDF. Prince is free for non-commercial use. This
package is a simple wrapper for the
[downloadable package](https://www.princexml.com/download/).

# Installation

Run as root:

```shell
ROOT=/usr/local/portage
REPO="$ROOT/mefyl"
mkdir -p "$ROOT"
chown portage:portage "$ROOT"
git clone https://github.com/mefyl/portage.git "$REPO"
cat > /etc/portage/repos.conf/mefyl.conf << EOF
[mefyl]
location = $REPO
masters = gentoo
auto-sync = no
EOF
chown -R portage:portage "$REPO" /etc/portage/repos.conf/mefyl.conf
```
