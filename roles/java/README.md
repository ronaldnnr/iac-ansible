# Ansible Role: Java

![Distro](https://img.shields.io/badge/centos-7-blue.svg)
![Distro](https://img.shields.io/badge/rhel-7-blue.svg)
![Distro](https://img.shields.io/badge/ubuntu-16.04,_18.04-blue.svg)

Role do Ansible para instalação e configuração do Java.

## Pré-requisitos

- Ansible 2.6+

## Sistemas suportados

- CentOS 7 (x64)
- RHEL 7 (x64)
- Ubuntu 16.04 (x64)
- Ubuntu 18.04 (x64)

## Variáveis

Abaixo são descritas as principais variáveis da role. Para maiores detalhes, veja
o arquivo [`defaults/main.yml`](defaults/main.yml).

```yaml
# Nomes dos pacotes do Java a serem instalados
java_packages: []
```

## Dependências

Nenhuma.

## Exemplo de uso

Arquivo `requirements.yml`:

```yaml
- src: git@example.com:ansible-roles/java.git
  scm: git
  version: v0.2.0
  name: java
```

Playbook:

```yaml
---
- hosts: all
  roles:
    - role: java
      vars:
        java_packages: ["openjdk-8-jre-headless"]
```

## Licença

Copyright © 2019 Leonardo Fernandes Solutions. Todos os direitos reservados.
