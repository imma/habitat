pkg_name=habitat
pkg_origin=imma
pkg_version=0.0.1
pkg_description="habitat block"
pkg_upstream_url=https://github.com/imma/habitat
pkg_maintainer="Amanibhavam <iam@defn.sh>"
pkg_license=('Apache-2.0')
pkg_source=nosuchfile.tgz
pkg_deps=(
  core/openssh
  core/git
  core/docker
  core/packer
  core/terraform
)
pkg_build_deps=(
)

do_download() {
  return 0
}

do_verify() {
  return 0
}

do_unpack() {
  return 0
}

do_prepare() {
  echo "prefix is $pkg_prefix"
}

do_build() {
  return 0
}

do_install() {
  echo "installing to $pkg_prefix"
}
