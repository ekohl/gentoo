# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI="5"

IUSE=""
MODS="resolvconf"

inherit selinux-policy-2

DESCRIPTION="SELinux policy for resolvconf"

if [[ ${PV} != 9999* ]] ; then
	KEYWORDS="amd64 ~arm ~arm64 ~mips x86"
fi
