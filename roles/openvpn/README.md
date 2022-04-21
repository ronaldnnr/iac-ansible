# Ansible Role: OpenVPN

Role para instalação e configuração do OpenVPN.

## Pré-requisitos

Esta role depende do pacote `easy-rsa`; quando executada no RHEL/CentOS, o repositório
EPEL deve ser previamente instalado e configurado.

## Variáveis

Abaixo são descritas as principais variáveis da role. Para maiores detalhes, veja
o arquivo [`defaults/main.yml`](defaults/main.yml).

```yaml
openvpn_server_ip: 123.45.6.7
openvpn_server_port: 1194
openvpn_server_protocol: udp
```

Configurações de IP, porta e protocolo do servidor.

## Dependências

- EPEL (quando executada no RHEL/CentOS)

## Exemplo de uso

Arquivo `requirements.yml`:

```yaml
- src: git@example.com:ansible-roles/openvpn.git
  scm: git
  version: v0.2.0
  name: openvpn
```

Playbook:

```yaml
---
- hosts: all
  roles:
    - role: openvpn
      vars:
        openvpn_server_port: 1194
        openvpn_server_protocol: udp
```

## Licença

Copyright © 2019 Leonardo Fernandes Solutions. Todos os direitos reservados.
