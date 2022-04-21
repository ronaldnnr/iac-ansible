[![pipeline status](https://git.tray.net.br/infra/sre/iac-ansible/roles/nginx-proxy-pass/badges/master/pipeline.svg)](https://git.tray.net.br/infra/sre/iac-ansible/roles/nginx-proxy-pass/commits/master)

Nginx Proxy Pass
=========

This role is used to configure a proxy pass using nginx.

Requirements
------------

It assumes you already have nginx installed and a service listening on a default port.

Role Variables
--------------

source_port: specify which port the service is listening on
dest_port: specify which port to proxy. Default to 80

Example Playbook
----------------

    - hosts: servers
      roles:
         - { role: nginx-proxy-pass }
         - { role: nginx-proxy-pass, source_port: 80, dest_port: 4440 }

BSD

Author Information
------------------

Luis Palacios github.com/lfpalacios
