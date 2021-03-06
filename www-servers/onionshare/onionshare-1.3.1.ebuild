# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python3_{4,5,6} )

inherit distutils-r1

DESCRIPTION="Share a file securely and anonymously over Tor"
HOMEPAGE="https://onionshare.org/"
SRC_URI="https://github.com/micahflee/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="nautilus"

DEPEND="${PYTHON_DEPS}"
RDEPEND="${DEPEND}
	dev-python/flask[${PYTHON_USEDEP}]
	dev-python/PyQt5[${PYTHON_USEDEP}]
	>=net-libs/stem-1.6.0[${PYTHON_USEDEP}]
	>=net-vpn/tor-0.2.7.1
	nautilus? ( dev-python/nautilus-python )"
