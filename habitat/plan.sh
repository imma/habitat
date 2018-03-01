pkg_name=habitat
pkg_origin=imma
pkg_version="0.1.0"
pkg_maintainer="Amanibhavam <iam@defn.sh>"
pkg_license=("Apache-2.0")
pkg_deps=(
  core/node
)

do_build() {
  return 0
}

do_install() {
  cp /src/index.js "$pkg_prefix/"
}
