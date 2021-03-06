# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="5"
PYTHON_COMPAT=( python2_7 )

inherit twisted-r1

DESCRIPTION="Twisted documentation system"

KEYWORDS="~amd64 ~arm ~ia64 ~ppc ~ppc64 ~x86"
IUSE=""

DEPEND="
	=dev-python/twisted-core-${TWISTED_RELEASE}*[${PYTHON_USEDEP}]
	=dev-python/twisted-web-${TWISTED_RELEASE}*[${PYTHON_USEDEP}]"
RDEPEND="${DEPEND}
	!dev-python/twisted
"
