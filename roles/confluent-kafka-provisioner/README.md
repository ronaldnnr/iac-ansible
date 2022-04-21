# Ansible Role: Kafka

Ansible roles para o provisionamento de um cluster de Kafka.

## Pré-requisitos

- Ansible 2.7.7 >

## Recursos provisionados

- Zookeeper cluster
- Confluent Kafka brokers
- Confluent Kafka Connect
- Confluent Kafka Rest
- Confluent Kafka Control Center

## Variáveis

Abaixo estão as principais variáveis da role, para maiores detalhes veja o arquivo [`vars/shared_vars.yml`](vars/shared_vars.yml).

```yaml
package_version: 5.3.0-1
zookeeper_jolokia_port: 7770
kafka_broker_jolokia_port: 7771
schema_registry_jolokia_port: 7772
kafka_connect_jolokia_port: 7773
ksql_jolokia_port: 7774
kafka_rest_jolokia_port: 7775
zookeeper_client_port: 2181
open_file_limit: 500000
```

## Exemplo de uso

- Inventário

A role utiliza os hosts nos arquivos de configuração dos serviços, atente-se a colocar o ip privado no host.

Os hosts de zookeeper e brokers do kafka precisam ter um id que é utilizado para organizar o cluster.

A variável security_mode se refere a como os serviços se conversarão entre si, sendo possível configurar criptografia SSL para isso, as opções são:

- plaintext, ssl, sasl_ssl, ssl_customcerts, ssl_kerberos, kerberos e kerberos_ssl_customcerts.

Para maiores detalhes acesse a documentação da role na [Confluent](https://docs.confluent.io/current/installation/installing_cp/cp-ansible.html).

```yaml
all:
  vars:
    ansible_become: true
    security_mode: plaintext
  children:
    zookeeper:
      hosts:
        172.31.35.118:
          ansible_ssh_host: 35.153.71.158
          zookeeper_id: 5
        172.31.42.67:
          ansible_ssh_host: 3.82.53.224
          zookeeper_id: 4
        172.31.47.210:
          ansible_ssh_host: 18.232.104.92
          zookeeper_id: 3
        172.31.40.83:
          ansible_ssh_host: 54.161.8.216
          zookeeper_id: 2
        172.31.46.152:
          ansible_ssh_host: 54.80.80.95
          zookeeper_id: 1
    kafka_broker:
      hosts:
        172.31.35.118:
          ansible_ssh_host: 35.153.71.158
          broker_id: 5
        172.31.42.67:
          ansible_ssh_host: 3.82.53.224
          broker_id: 4
        172.31.47.210:
          ansible_ssh_host: 18.232.104.92
          broker_id: 3
        172.31.40.83:
          ansible_ssh_host: 54.161.8.216
          broker_id: 2
        172.31.46.152:
          ansible_ssh_host: 54.80.80.95
          broker_id: 1
    control_center:
      hosts:
        172.31.47.117:
          ansible_ssh_host: 52.2.239.165
    kafka_connect:
      hosts:
        172.31.35.118:
          ansible_ssh_host: 35.153.71.158
    kafka_rest:
      hosts:
        172.31.35.118:
          ansible_ssh_host: 35.153.71.158


```


Execute o playbook `all.yml` com o comando:

- `ansible-playbook all.yml`

Playbook:

```yaml
---
- name: Host Prerequisites
  hosts: zookeeper:kafka_broker:schema_registry:kafka_connect:ksql:control_center:kafka_rest
  tags:
    - always
  tasks:
  - import_role:
      name: confluent.common
  - import_role:
      name: confluent.kerberos
    when: security_mode in ["kerberos", "kerberos_ssl", "kerberos_ssl_customcerts"]

- name: Certificate Generation
  hosts: zookeeper[0]
  gather_facts: no
  tags:
    - always
  tasks:
  - import_role:
      name: confluent.ssl_customcerts
    when: security_mode in ["kerberos_ssl_customcerts", "ssl_customcerts"]
  - import_role:
      name: confluent.ssl_CA
    when: security_mode in ["ssl", "sasl_ssl", "kerberos_ssl"]

- name: Certificate Syncing
  hosts: zookeeper:kafka_broker:schema_registry:kafka_connect:ksql:control_center:kafka_rest
  tags:
    - always
  tasks:
  - import_role:
      name: confluent.ssl_sync
    when: security_mode in ["kerberos_ssl_customcerts", "ssl_customcerts", "ssl", "sasl_ssl", "kerberos_ssl"]

- name: Zookeeper Provisioning
  hosts: zookeeper
  gather_facts: no
  tags:
    - zookeeper
  tasks:
  - import_role:
      name: ansible-zookeeper


- name: Kafka Broker Provisioning
  hosts: kafka_broker
  gather_facts: no
  tags:
    - kafka_broker
  tasks:
  - import_role:
      name: confluent.kafka_broker

- name: Kafta Connect Provisioning
  hosts: kafka_connect
  gather_facts: no
  tags:
    - kafka_connect
  tasks:
  - import_role:
      name: confluent.kafka_connect


- name: Control Center Provisioning
  hosts: control_center
  gather_facts: no
  tags:
    - control_center
  tasks:
  - import_role:
      name: confluent.control_center

- name: Kafka Rest Provisioning
  hosts: kafka_rest
  gather_facts: no
  tags:
    - kafka_rest
  tasks:
  - import_role:
      name: confluent.kafka_rest

```

## License

Copyright © 2019 Leonardo Fernandes Solutions. Todos os direitos reservados.
