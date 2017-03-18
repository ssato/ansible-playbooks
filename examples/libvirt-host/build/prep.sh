#! /bin/bash
#
# Usage: $0 [rhel_mirror_yum_repo_filepath [rhel_iso_img_path]]
#
set -ex


source ${0%/*}/vmprofile.sh

local_yum_repo_file=${1:-/etc/yum.repos.d/redhat-mirror.repo}
local_iso_img=${2:-${iso_img:?}}
connect_to=root@${ip_addr:?}

timeout 5 ssh ${connect_to} || ssh-copy-id ${connect_to}
scp ${local_iso_img} ${connect_to}:${iso_img:?}
scp ${local_yum_repo_file} ${connect_to}:/etc/yum.repos.d/

# vim:sw=4:ts=4:et:
