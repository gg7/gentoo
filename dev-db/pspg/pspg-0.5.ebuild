# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="A better pager for psql"
HOMEPAGE="https://github.com/okbob/${PN}"
SRC_URI="https://github.com/okbob/${PN}/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD-2"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="sys-libs/ncurses:*"
RDEPEND="${DEPEND}"
