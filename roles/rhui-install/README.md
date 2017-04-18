rhui-install
=============

The role to installl RHUI (Red Hat Update Infrastructure) v3.

Requirements
------------

- RHUA node
- RHEL, RHUI and RHGS (Red Hat Gluster Storage) iso images

Role Variables
--------------

see defaults/all

Dependencies
------------

It only require basic modules in core.

Example Playbook
----------------


    - hosts: rhua
      roles:
         - role: rhui-install

License
-------

MIT

Author Information
------------------

Satoru SATOH <ssato@redhat.com>
