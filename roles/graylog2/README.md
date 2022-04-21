# Ansible Role: Graylog Server

Description
-----------

Ansible role which installs and configures Graylog log management.

Dependencies
------------

- **Only Ansible versions > 2.2.0 are supported.**
- Java 8 - Ubuntu Xenial and up support OpenJDK 8 by default. For other distributions consider backports accordingly
- [NGINX][2]
- Tested on Ubuntu 16.04 / Ubuntu 18.04 / Debian 9 / Centos 7

Quickstart
----------

- You need at least 4GB of memory to run Graylog
- Generate the password hash for the admin user:
  - `echo -n yourpassword | sha256sum     # Linux`
  - `echo -n yourpassword | shasum -a 256 # Mac`

Here is an example of a playbook targeting Vagrant (Ubuntu Xenial):

```yaml
- hosts: "all"
  remote_user: "ubuntu"
  become: True
  vars:
    graylog_install_java: False # Elasticsearch role already installed Java
    graylog_password_secret: "2jueVqZpwLLjaWxV" # generate with: pwgen -s 96 1
    graylog_root_password_sha2: "8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918"
    graylog_http_bind_address: "{{ ansible_default_ipv4.address }}:9000"
    graylog_http_publish_uri: "http://{{ ansible_default_ipv4.address }}:9000/"
    graylog_http_external_uri: "http://{{ ansible_default_ipv4.address }}:9000/"
  roles:
    - role: "Graylog2.graylog-ansible-role"
      tags:
        - "graylog"
```

- Create a playbook file with that content, e.g. `your_playbook.yml`
- Set up the `graylog_elasticsearch_hosts` and `graylog_mongodb_uri` in `defaults/main.yaml`
- Run the playbook with `ansible-playbook -i inventory_file your_playbook.yml`
- Login to Graylog by opening `http://127.0.0.1:9000` in your browser. Default username and password is `admin`

Variables
--------

```yaml
# Basic server settings
graylog_server_version:     "3.0.1-1" # Optional, if not provided the latest version will be installed
graylog_is_master:          "True"
graylog_password_secret:    "2jueVqZpwLLjaWxV" # generate with: pwgen -s 96 1
graylog_root_password_sha2: "8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918"
graylog_http_bind_address: "{{ ansible_default_ipv4.address }}:9000"
graylog_http_publish_uri: "http://{{ ansible_default_ipv4.address }}:9000/"
graylog_http_external_uri: "http://{{ ansible_default_ipv4.address }}:9000/"
```

Take a look into `defaults/main.yml` to get an overview of all configuration parameters.

More detailed example
---------------------

- Set up `roles_path = ./roles` in `ansible.cfg` (`[defaults]` block)
- Set up playbook (see example below):

```yaml
- hosts: "server"
  become: True
  vars:
    graylog_install_java: False # Elasticsearch role already installed Java
    graylog_password_secret: "2jueVqZpwLLjaWxV" # generate with: pwgen -s 96 1
    graylog_root_password_sha2: "8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918"
    graylog_http_bind_address: "{{ ansible_default_ipv4.address }}:9000"
    graylog_http_publish_uri: "http://{{ ansible_default_ipv4.address }}:9000/"
    graylog_http_external_uri: "http://{{ ansible_default_ipv4.address }}:9000/"

    nginx_sites:
      graylog:
        - "listen 80"
        - "server_name graylog"
        - |
          location / {
            proxy_pass http://localhost:9000/;
            proxy_set_header Host $host;
            proxy_set_header X-Real-IP $remote_addr;
            proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
            proxy_pass_request_headers on;
            proxy_connect_timeout 150;
            proxy_send_timeout 100;
            proxy_read_timeout 100;
            proxy_buffers 4 32k;
            client_max_body_size 8m;
            client_body_buffer_size 128k;
          }

  roles:
    - role: "Graylog2.graylog-ansible-role"
      tags:
        - "graylog"
```

- Create a playbook file with that content, e.g. `your_playbook.yml`
- Set up the `graylog_elasticsearch_hosts` and `graylog_mongodb_uri` in `defaults/main.yaml`
- Run the playbook with `ansible-playbook -i inventory_file your_playbook.yml`
- Login to Graylog by opening `http://<host IP>` in your browser, default username and password is `admin`

Explicit playbook of roles
--------------------------

It's good to be explicit, these are all the roles that you need to run for Graylog.

Note: in this example vars are in a more appropriate place at `group_vars/group/vars`

```yaml
- name: "Apply roles for Graylog servers"
  hosts: "graylog_servers"
  become: True
  vars:
    graylog_install_elasticsearch: False
    graylog_install_mongodb:       False
    graylog_install_nginx:         False

  roles:
    - role: "jdauphant.nginx"
      tags:
        - "nginx"
        - "graylog_servers"
```

Conditional role dependencies
-----------------------------

Dependencies can be enabled/disabled with the `host_vars` `graylog_install_*`.
Take look into [meta/main.yml][3] for more information. Keep in mind that you
have to install all dependencies even when they are disabled to prevent errors.

Further Reading
----------------

Great articles by Pablo Daniel Estigarribia Davyt on how to use this role:

- [Install Graylog][5]
- [Receive messages from Logstash][6]
- [Monitor Graylog with NSCA][7]


License
-------

Copyright © 2019 Leonardo Fernandes Solutions. Todos os direitos reservados.


[1]: https://github.com/elastic/ansible-elasticsearch
[2]: https://github.com/jdauphant/ansible-role-nginx
[3]: https://github.com/Graylog2/graylog-ansible-role/blob/master/meta/main.yml
[4]: https://github.com/Graylog2/graylog2-ansible-role/graphs/contributors
[5]: https://pablodav.github.io/post/graylog/graylog_ansible
[6]: https://pablodav.github.io/post/graylog/logstash_input
[7]: https://pablodav.github.io/post/graylog/graylog_logstash_nagios_nsca
