# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="Result value combinators for OCaml"
HOMEPAGE="http://erratique.ch/software/rresult https://github.com/dbuenzli/rresult"
SRC_URI="http://erratique.ch/software/rresult/releases/${P}.tbz"

LICENSE="ISC"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="
	dev-lang/ocaml:=
	dev-ml/result:=
"
DEPEND="${RDEPEND}
	dev-ml/topkg
	dev-ml/opam
	dev-ml/ocamlbuild"

src_compile() {
	ocaml pkg/pkg.ml build || die
}

src_install() {
	opam-installer -i \
		--prefix="${ED}/usr" \
		--libdir="${D}/$(ocamlc -where)" \
		--docdir="${ED}/usr/share/doc/${PF}" \
		${PN}.install || die
}
