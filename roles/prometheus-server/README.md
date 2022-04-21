# Ansible Role: Prometheus Server

Role para instalação do Prometheus Server com Node Exporter e Alert Manager configurados.

## Pré-requisitos

- Ansible 2.6 +


## Distribuições Suportadas

- CentOS 7 - OK
- Ubuntu 18.04 - OK

## Variáveis

Abaixo estão as principais variáveis da role. Para maiores detalhes, veja
o arquivo [`defaults/main.yml`](defaults/main.yml).


```yaml

# Prometheus
prometheus_install: true
prometheus_version: '2.11.2'
prometheus_platform_architecture: 'linux-amd64'

# Node exporter
prometheus_node_exporter_version: '0.18.1'
prometheus_node_exporter_install: true

# Alert manager
prometheus_alert_manager_version: '0.18.0'
prometheus_alert_manager_install: true

```

## Dependências

Nenhuma.

## Exemplo de uso

Playbook:

```yaml
---
  - hosts: prometheus
    become: true
    roles:
      - role: prometheus-server
    vars:
      prometheus_install: true
      prometheus_version: '2.11.2'
      prometheus_platform_architecture: 'linux-amd64'
      prometheus_node_exporter_version: '0.18.1'
      prometheus_node_exporter_install: true
      prometheus_alert_manager_version: '0.18.0'
      prometheus_alert_manager_install: true
```

## Licença

Copyright © 2019 Leonardo Fernandes Solutions. Todos os direitos reservados.
