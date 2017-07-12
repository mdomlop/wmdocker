# Maintainer: Manuel Domínguez López <mdomlop at gmail dot com>

_pkgver_year=2017
_pkgver_month=07
_pkgver_day=12

pkgname=wmdocker
pkgver=1.5.1
pkgrel=1
pkgdesc="Docking System Tray."
url="https://github.com/mdomlop/${pkgname}"
source=(
"https://raw.githubusercontent.com/mdomlop/${pkgname}/master/AUTHORS"
"https://raw.githubusercontent.com/mdomlop/${pkgname}/master/ChangeLog"
"https://raw.githubusercontent.com/mdomlop/${pkgname}/master/COPYING"
"https://raw.githubusercontent.com/mdomlop/${pkgname}/master/icons.c"
"https://raw.githubusercontent.com/mdomlop/${pkgname}/master/icons.h"
"https://raw.githubusercontent.com/mdomlop/${pkgname}/master/kde.c"
"https://raw.githubusercontent.com/mdomlop/${pkgname}/master/kde.h"
"https://raw.githubusercontent.com/mdomlop/${pkgname}/master/Makefile"
"https://raw.githubusercontent.com/mdomlop/${pkgname}/master/net.c"
"https://raw.githubusercontent.com/mdomlop/${pkgname}/master/net.h"
"https://raw.githubusercontent.com/mdomlop/${pkgname}/master/README.md"
"https://raw.githubusercontent.com/mdomlop/${pkgname}/master/THANKS"
"https://raw.githubusercontent.com/mdomlop/${pkgname}/master/version.h"
"https://raw.githubusercontent.com/mdomlop/${pkgname}/master/version.h.in"
"https://raw.githubusercontent.com/mdomlop/${pkgname}/master/wmdocker.c"
"https://raw.githubusercontent.com/mdomlop/${pkgname}/master/wmdocker.h"
"https://raw.githubusercontent.com/mdomlop/${pkgname}/master/xproperty.c"
"https://raw.githubusercontent.com/mdomlop/${pkgname}/master/xproperty.h"
)

md5sums=(
'82acf73872c08e5f1732b708656baae9'  # AUTHORS
'79d92daf42758519a05208956c921461'  # ChangeLog
'94d55d512a9ba36caa9b7df079bae19f'  # COPYING
'033c4594a17242cefaef414138a62692'  # icons.c
'9fe3ae7a2bb45645f90c7ed101de26b5'  # icons.h
'fadb060723fac50b3708f9708492b5cf'  # kde.c
'9189dc3e1fcc55691409286e931ce71e'  # kde.h
'ab092c8367cdbb1581f302d771f6a201'  # Makefile
'42a1fb9a1f884524018d1535eb2ec36b'  # net.c
'97fec0701600198142acb305ebc7b674'  # net.h
'eea2fe40b8c98bf170a428e6e0f49e40'  # README.md
'c04529e023039a50c6476a064faa7aea'  # THANKS
'119659fd278426e00808e3a865b5aae5'  # version.h
'073c370a5739a8dfae8da1d2d910782a'  # version.h.in
'1d6390e0e84c09a292dc6e98e101d8cc'  # wmdocker.c
'd61ec79b7ed4265f02279b4d9d173a95'  # wmdocker.h
'6298a3fc26d26ca3c689107b5575d11a'  # xproperty.c
'db0b759bf9788b3b964b7ff5791c80b4'  # xproperty.h
)

license=('GPL2')
depends=('libx11')
arch=('x86_64' 'i686')

build() {
    cd "${srcdir}"
    make  XLIBPATH=/usr/lib
    }

package() {
    cd "${srcdir}"
    make install PREFIX=${pkgdir}/usr
}
