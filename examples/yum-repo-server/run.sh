#! /bin/bash
set -ex

cd ${0%/*}

log=$(mktemp --dry-run)
(
ansible-playbook -i hosts site.yml --syntax-check -vv
ansible-playbook -i hosts site.yml --check -vv
ansible-playbook -i hosts site.yml -vv
) 2>&1 | tee ${log}
