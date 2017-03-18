#! /bin/bash
# see also virt-install(1)
set -ex

self=${0##*/}
test $# -gt 0 && ks_path=$1 || ks_path="${0%/*}/ks.cfg"
test -f ${ks_path:?}
kscfg=${ks_path##*/}

source ${0%/*}/vmprofile.sh

# for dhcp and dns:
sudo grep "host mac=.${mac_addr}." /etc/libvirt/qemu/networks/${network}.xml || \
sudo virsh net-update default add ip-dhcp-host --live --config \
--xml "<host mac='${mac_addr}' name='${hostname}' ip='${ip_addr}' />"

sudo \
virt-install \
--check-cpu --hvm --accelerate --noautoconsole \
--wait=10 \
--name=${hostname:?} \
--connect=${connect:?} \
--ram=1024 \
--arch=x86_64 \
--vcpus=2 \
--cpu=host \
--graphics vnc \
--os-type=linux \
--os-variant=${os_variant} \
--controller=scsi,model=virtio-scsi \
--disk pool=default,format=qcow2,cache=none,size=10,bus=scsi \
--network network=${network},model=virtio,mac=${mac_addr:?} \
--location=${iso_img} --initrd-inject=${ks_path} \
--extra-args="${extra_args}"

# vim:sw=4:ts=4:et:
