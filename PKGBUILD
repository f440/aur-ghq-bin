# Maintainer: f440 <freq440@gmail.com>

pkgname=ghq-bin
pkgver=1.6.3
pkgrel=1
pkgdesc="Remote repository management made easy. Pre-compiled."
arch=('x86_64')
url="https://github.com/motemen/ghq"
license=('MIT')
depends=()
provides=('ghq')
conflicts=('ghq')

source=("${pkgname/-bin/}-${pkgver}_linux_amd64.zip::https://github.com/motemen/ghq/releases/download/v${pkgver}/${pkgname/-bin/}_linux_amd64.zip")
sha1sums=('a15ee03c1a98fa1e50e3e9a6c1ac2688851f0072')

package() {
  curl -O "https://raw.githubusercontent.com/motemen/ghq/v${pkgver}/LICENSE"
  install -Dm644 "LICENSE" "${pkgdir}/usr/share/licenses/ghq-bin/LICENSE"
  install -Dm755 "${pkgname/-bin/}_linux_amd64/ghq" "${pkgdir}/usr/bin/${pkgname/-bin/}"
  install -Dm644 "${pkgname/-bin/}_linux_amd64/misc/zsh/_ghq" "${pkgdir}/usr/share/zsh/site-functions/_ghq"
}
