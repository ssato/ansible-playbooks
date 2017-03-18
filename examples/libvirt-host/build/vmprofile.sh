# VM (guest) profile data.
# see also virt-install(1)
connect=${QEMU_CONNECT:-qemu:///system}
network=${1:-default}
mac_addr=${2:-52:54:00:00:01:00}
ip_addr=${3:-192.168.122.100}
hostname=rhel-7-ansible-test-host
iso_img=/var/lib/libvirt/images/rhel-server-7.3-x86_64-dvd.iso
disksize=20  # [GB]
os_variant=rhel7
extra_args="inst.headless inst.text inst.ks=file:/${kscfg} biosdevname=0 net.ifnames=0"

scp_iso=${SCP_ISO:-no}  # or 'yes'

# vim:sw=4:ts=4:et:
