# Ansible Role: Confluent Kafka Zookeper

<!-- TODO: revisar concordância e sentido da frase abaixo. -->
Role do Ansible para instalação e configuração do Confluent Kafka Common.

## Pré-requisitos

- Ansible 2.6+

## Sistemas suportados

<!-- TODO: revisar SOs abaixo. -->
- CentOS 7 (x64)
- Debian 9 (x64)
- Ubuntu 18.04 (x64)

## Variáveis

Abaixo são descritas as principais variáveis da role. Para maiores detalhes, veja
o arquivo [`defaults/main.yml`](defaults/main.yml).

```yaml
# TODO: adicionar as principais variáveis da role.
```

## Dependências

<!-- TODO: alterar (se necessário) conforme dependências da role. -->
Nenhuma.

## Exemplo de uso

Arquivo `requirements.yml`:

```yaml
- src: git@example.com:ansible-roles/confluent-kafka-common.git
  scm: git
  version: v0.0.1
  name: confluent-kafka-common
```

Playbook:

```yaml
---
- hosts: all
  roles:
    - role: confluent-kafka-common
      vars:
        confluent_kafka_common_foo: bar # TODO: alterar para uma variável/valor reais.
```

## Licença

Copyright © 2019 Leonardo Fernandes Solutions. Todos os direitos reservados.
