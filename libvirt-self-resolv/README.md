Role Name
=========

Accomplish
https://liquidat.wordpress.com/2017/03/03/howto-automated-dns-resolution-for-kvmlibvirt-guests-with-a-local-domain/

Requirements
------------

- libvirt hosts support KVM

Role Variables
--------------

- see roles/libvirt-host/defaults/main.yml

Dependencies
------------

It only require basics modules in core.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: libvirt-hosts
      roles:
         - { role: username.libvirt-host, libvirt_lab_network_name: lab }

License
-------

BSD

Author Information
------------------

Satoru SATOH <ssato@redhat.com>
