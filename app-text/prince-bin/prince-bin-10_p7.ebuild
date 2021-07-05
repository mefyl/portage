# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

inherit eutils

MY_PN="prince"
MY_P="${MY_PN}-${PV/_p/r}-linux-generic-x86_64"

DESCRIPTION="Converts XML/HTML to PDF."

HOMEPAGE="http://www.princexml.com/"
SRC_URI="http://www.princexml.com/download/${MY_P}.tar.gz"
LICENSE="Prince-EULA"
SLOT="0"
KEYWORDS="amd64"
IUSE=""
DEPEND=""
RDEPEND=""

S="${WORKDIR}/${MY_P}"

src_unpack() {
	unpack ${A}
	cd "${S}"

	epatch "${FILESDIR}"/${P}-destdir.patch
}

src_install() {
	DESTDIR="${D}" ./install.sh <<<'/usr'
}
