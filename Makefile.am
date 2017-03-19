EXTRA_DIST = package.spec.in rpm.mk

include rpm.mk

pkgdatadir = /etc/ansible/roles

# role: libvirt-host
pkgdata0dir = $(pkgdatadir)/libvirt-host/
dist_pkgdata0_DATA = $(wildcard libvirt-host/*.*)

pkgdata00dir = $(pkgdatadir)/libvirt-host/defaults
dist_pkgdata00_DATA = $(wildcard libvirt-host/defaults/*.*)

pkgdata01dir = $(pkgdatadir)/libvirt-host/handlers
dist_pkgdata01_DATA = $(wildcard libvirt-host/handlers/*.*)

pkgdata02dir = $(pkgdatadir)/libvirt-host/meta
dist_pkgdata02_DATA = $(wildcard libvirt-host/meta/*.*)

pkgdata03dir = $(pkgdatadir)/libvirt-host/tasks
dist_pkgdata03_DATA = $(wildcard libvirt-host/tasks/*.*)

pkgdata04dir = $(pkgdatadir)/libvirt-host/templates
dist_pkgdata04_DATA = $(wildcard libvirt-host/templates/*.*)

pkgdata05dir = $(pkgdatadir)/libvirt-host/tests
dist_pkgdata05_DATA = $(wildcard libvirt-host/tests/*.*)

pkgdata06dir = $(pkgdatadir)/libvirt-host/vars
dist_pkgdata06_DATA = $(wildcard libvirt-host/vars/*.*)

# role: yum-repo-server
pkgdata1dir = $(pkgdatadir)/yum-repo-server/
dist_pkgdata1_DATA = $(wildcard yum-repo-server/*.*)

pkgdata10dir = $(pkgdatadir)/yum-repo-server/defaults
dist_pkgdata10_DATA = $(wildcard yum-repo-server/defaults/*.*)

pkgdata20dir = $(pkgdatadir)/yum-repo-server/handlers
dist_pkgdata20_DATA = $(wildcard yum-repo-server/handlers/*.*)

pkgdata30dir = $(pkgdatadir)/yum-repo-server/tasks
dist_pkgdata30_DATA = $(wildcard yum-repo-server/tasks/*.*)

# vim:sw=4:ts=4:noet:
