# Ansible Role: RabbitMQ

Role para instalação e configuração do RabbitMQ.

## Pré-requisitos

Nenhum.

## Variáveis

Abaixo são descritas as principais variáveis da role. Para maiores detalhes, veja
o arquivo [`defaults/main.yml`](defaults/main.yml).

```yaml
rabbitmq_erlang_version: 22.x
```

## Dependências

Nenhuma.

## Exemplo de uso

Arquivo `requirements.yml`:

```yaml
- src: git@example.com:ansible-roles/rabbitmq.git
  scm: git
  version: v0.4.0
  name: rabbitmq
```

Playbook:

```yaml
---
- hosts: all
  roles:
    - role: rabbitmq
      vars:
        rabbitmq_erlang_version: 22.x
```

## Licença

Copyright © 2019 Leonardo Fernandes Solutions. Todos os direitos reservados.
