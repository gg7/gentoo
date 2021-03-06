# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

PYTHON_COMPAT=( python2_7 )
DISTUTILS_SINGLE_IMPL=1

inherit distutils-r1

DESCRIPTION="Support for Git branches in Bazaar"
HOMEPAGE="http://bazaar-vcs.org/BzrForeignBranches/Git"
SRC_URI=""

LICENSE="GPL-2"
SLOT="0"

if [[ ${PV} = 9999 ]]; then
	inherit bzr
	EBZR_REPO_URI="lp:bzr-git"
	KEYWORDS="amd64 x86"
else
	SRC_URI="https://www.samba.org/~jelmer/bzr/${P}.tar.gz"
	KEYWORDS="amd64 x86"
fi

IUSE=""
# Test are broken, they want API functions from Dulwich which are not
# installed in Gentoo
RESTRICT="test"

# Check info.py for dulwich and bzr version dependency info.
# The file should be fairly straightforward to understand.
DEPEND=""
RDEPEND=">=dev-python/dulwich-0.8.2[${PYTHON_USEDEP}]
	>=dev-vcs/bzr-2.5.0[${PYTHON_USEDEP}]"

pkg_setup() {
	python-single-r1_pkg_setup
}
