# Ansible Role: Elasticsearch
![Distro](https://img.shields.io/badge/role-elasticsearch-yellowgreen?style=plastic&logo=appveyor)

Role para instalação e configuração de um cluster com elasticsearch

## [`Elasticsearch`](https://www.elastic.co/what-is/elasticsearch)
O tema de busca por texto completo tem se tornado cada dia mais comentado na comunidade de desenvolvedores conforme a necessidade de trabalhar com dados volumosos tem se tornado cada vez mais comum. Encontrar dados importantes em um grande emaranhado de documentos acabou se tornando uma necessidade recorrente, por muito tempo, sem uma solução comumente aceita. Até que surge o Elasticsearch.

## Famílias Suportadas

- RedHat
- Debian

## Variáveis
```yaml

elasticsearch_version: Versão do elasticsearch

# Cluster configuration
elasticsearch_cluster: true
elasticsearch_minimum_master_nodes: Número total de masters elegiveis (NODES / 2 + 1)
elasticsearch_network_host: Porta que o elasticsearch irá bindar o serviço default: 0.0.0.0
elasticsearch_http_host: Porta http que o ElasticSearch vai atender as requisições default: 9200
elasticsearch_cluster_name: Nome do Cluster
elasticsearch_config_dir:
elasticsearch_path_data:


# Force new java version
rm_java_old_version: True

# Install java
java_install : True

## ElasticSearch 7 variables
path_log: /var/log/elasticsearch

```

## Dependências
 - Liberação da porta 9200 (REST)
 - Liberação das portas 9300 - 9305 (Comunicação entre os nodes)

## Exemplo - Playbook
```yaml
---
  - hosts: elasticsearch
    become: true
    roles:
      - elasticsearch7
    vars:
      cluster_name: default-cluster
      node_name: "{{ ansible_host }}"
      path_log: /var/log/elasticsearch
      path_data: /var/lib/elasticsearch/data
      java_package: java-1.8.0-openjdk-devel.x86_64
```
## Exemplo - Inventory/hosts
```yaml
all:
 vars:
   ansible_become: true
 children:
   elasticsearch:
     hosts:
       172.0.0.1:
         ansible_ssh_host: 192.168.0.1
         ansible_ssh_port: 22
       172.0.0.2:
         ansible_ssh_host: 192.168.0.2
         ansible_ssh_port: 22
       172.0.0.3:
         ansible_ssh_host: 192.168.0.2
         ansible_ssh_port: 22
```
## Observações
```
  - O host deve ser declarado com o ip privado
  - A variável ansible_ssh_host deve ser o ip público
```

## Licença
Copyright © 2019 Leonardo Fernandes Solutions. Todos os direitos reservados.
