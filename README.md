Personal custom Gentoo packages collection.

# Packages

* Infinit: Peer to peer decentralized file system. I work at Infinit,
  this is the simplest way to install our binary packages. I may do
  source packages in the future.
* Prince XML: convert XML/HTML to PDF.

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
