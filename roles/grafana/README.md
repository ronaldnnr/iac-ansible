# Ansible Role: Grafana
![Distro](https://img.shields.io/badge/role-grafana-orange)

Role para instalação do Grafana.

## Grafana
O Grafana é uma plataforma para visualizar e analisar métricas por meio de gráficos. Ele tem suporte para diversos tipos de bancos de dados tanto gratuitos quanto pagos, pode ser instalado em qualquer sistema operacional.
Saiba mais sobre replica-set em: https://grafana.com/docs/
## Pré-requisitos
- Nenhum
## Famílias Suportadas
- RedHat

## Variáveis
```yaml
# Nenhum

```

## Dependências
- Nenhum


Playbook de exemplo
----------------

grafana.yml

----------------

    - hosts: grafana
      roles:
         - grafana

----------------

inventory/hosts

----------------

    [grafana]
    xxx.xxx.xx.x
    

## Exemplo - Playbook
```yaml
---
 - hosts: servers
    become: true
    roles:
      - grafana 
```

## Licença
Copyright © 2019 Leonardo Fernandes Solutions. Todos os direitos reservados.
