#! /bin/bash
set -ex

cd ${0%/*}

#log=$(mktemp --dry-run)
#(
ansible-playbook site.yml --syntax-check -vv
ansible-playbook site.yml --check -vv
ansible-playbook site.yml -vv
#) 2>&1 | tee ${log}
