#!/bin/bash
set -ex

cd ${0%/*}/../
ansible-playbook tests/test.yml -i tests/inventory --syntax-check
