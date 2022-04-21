zabbix-server
=========

[![pipeline status](https://git.tray.net.br/infra/sre/iac-ansible/roles/zabbix-server/badges/master/pipeline.svg)](https://git.tray.net.br/infra/sre/iac-ansible/roles/zabbix-server/commits/master)

Servidor de monitoramento Zabbix, agrega as informações em relacao ao estado da instância/servidor.

Requerimentos
------------

Nenhum

Variáveis
--------------

Abaixo as variaveis existentes e seus respectivos valores padrão

    zabbix_version: 3.4.4

Versão do zabbix-server a ser instalado.


Dependencias
------------

As seguintes roles são dependencias da role zabbix-server:

    mysql
    nginx

Playbook Exemplo
----------------

    - hosts: zabbix
      vars:
        zabbix_version: 3.4.4

      roles:
         - zabbix-server

Licença
-------

BSD

Informações sobre o autor
------------------

Esta role foi desenvolvida por Leonardo Fernandes (diogo.lima@leonardo-lab.com.br) e refatorada por Thiago Freitas (thiago.freitas@leonardo-lab.com.br) em 02/2018.
