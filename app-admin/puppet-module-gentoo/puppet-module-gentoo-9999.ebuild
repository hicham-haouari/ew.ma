# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3
inherit git-2
DESCRIPTION="Defines general functions and classes for the Gentoo Linux operating system."
HOMEPAGE="https://github.com/wrobel/pardalys/tree/master/pardalys/modules/os_gentoo"
EGIT_REPO_URI="git://github.com/wrobel/pardalys.git"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="app-admin/puppet"
RDEPEND="${DEPEND}"

src_install(){
	cd pardalys/modules/os_gentoo
	dodir /etc/puppet/modules/os_gentoo
	cp -r * "${D}"etc/puppet/modules/os_gentoo
	find "${D}" -name ".gitignore" -exec rm -f '{}' \;
}
