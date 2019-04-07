egeneralov.sshd_config
======================

Manage sshd configuration.

Requirements
------------

Systemd-based OS

Role Variables
--------------

- **ssh_port**: `22`
- **ssh_bind**: `0.0.0.0`
- **ssh_config_file**: `/etc/ssh/sshd_config`
- **manage_iptables**: `false`

Example Playbook
----------------

    - hosts: all
      roles:
         - { role: egeneralov.sshd_config, ssh_port: 22 }

License
-------

MIT

Author Information
------------------

Eduard Generalov <eduard@generalov.net>
