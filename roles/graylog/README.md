# Ansible Role: GRAYLOG

Role do Ansible para instalação e configuração do Graylog e suas dependências.

## Pré-requisitos

- Ansible 2.6+

## Sistemas suportados

- Ubuntu Server 16.04 LTS

## Variáveis

Abaixo são descritas as principais variáveis da role. 

Variáveis a seguir contidas
no arquivo `graylog.yml` em `envs/hmg_ou_prd/group_vars`.

```yaml
# ------------------------------------
# Role: lvm
# ------------------------------------

# Disco adicional da instância 
lvm_pv_devices:
  - /dev/nvme1n1 

# -----------------------------------
# Graylog
# -----------------------------------

# Usuário do Graylog
graylog_root_username: admin

# Senha do Graylog
graylog_root_password: crypted_password

# Endpoint para API e interface WEB 
graylog_http_bind_address: 192.192.192.192:9000
```

Váriavel a seguir contida no arquivo `graylog.ini` em `envs/hmg_ou_prd`
```yaml
[graylog]
# Endereço da instância onde será executado a role
192.192.192.192

[graylog:vars]
# Usuário para conexão à instância
ansible_user = usuario
```

## Dependências

Executar script contido na raiz deste diretório para que seja baixado a role externa do Java.
```shell
./update-roles.sh
```

## Exemplo de uso

Arquivo `graylog.yml`:

```shell
ansible-playbook -i envs/prd/graylog.ini playbooks/graylog.yml -v --diff
```

Playbook:

```yaml
---
- name: Graylog Server
  hosts: graylog

  roles:
    - role: lvm
      tags: lvm
    - role: geerlingguy.java
      tags: java
    - role: mongodb
      tags: mongodb
    - role: elasticsearch
      tags: elasticsearch
    - role: graylog
      tags: graylog
```

## Licença

Copyright © 2019 Leonardo Fernandes Solutions. Todos os direitos reservados.
