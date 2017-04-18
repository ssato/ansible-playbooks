# VM (guest) profile data.
# see also virt-install(1)
connect=${QEMU_CONNECT:-qemu:///system}
network=${1:-default}
mac_addr=${2:-52:54:00:00:01:00}
ip_addr=${3:-192.168.122.100}
hostname=rhel-7-ansible-test-host
iso_img=/var/lib/libvirt/images/isos/rhel-server-7.3-x86_64-dvd.iso
disksize=180  # [GB]
os_variant=rhel7
extra_args="inst.text inst.ks=file:/${kscfg} net.ifnames=0"

scp_iso=${SCP_ISO:-no}  # or 'yes'

if test ${connect:?} = "qemu:///system"; then  # It's local.
    remote_host=
else
    remote_host=${connect##*\/\/}
    remote_host=${remote_host%/*}
fi

# vim:sw=4:ts=4:et:
