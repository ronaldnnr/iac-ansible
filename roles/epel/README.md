# Ansible Role: EPEL

![Distro](https://img.shields.io/badge/centos-7-blue.svg)

Role para instalação e configuração do repositório EPEL.

## Pré-requisitos

- Ansible 2.6+

## Sistemas suportados

- CentOS 7 (x64)

## Variáveis

Abaixo são descritas as principais variáveis da role. Para maiores detalhes, veja
o arquivo [`defaults/main.yml`](defaults/main.yml).

```yaml
# Nome do pacote do EPEL
epel_package_name: epel-release

# Altere para 'false' para desabilitar o repositório
epel_enable_repo: true
```

## Dependências

Nenhuma.

## Exemplo de uso

Arquivo `requirements.yml`:

```yaml
- src: git@example.com:ansible-roles/epel.git
  scm: git
  version: v0.1.0
  name: epel
```

Playbook:

```yaml
---
- hosts: all
  roles:
    - role: epel
      vars:
        epel_enable_repo: true
```

## Licença

Copyright © 2019 Leonardo Fernandes Solutions. Todos os direitos reservados.
