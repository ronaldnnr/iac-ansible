MongoDB
==============

[![pipeline status]


MongoDB é um banco de dados não relacional.

Requerimentos
------------
O MongoDB não da suporte para debian9.

Variaveis
---------------

Abaixo as variaveis da role, assim como seus padroes já definidos

    mongodb_version: 3.x

Versão do mongodb


Dependencias
------------

Nenhuma

Playbook de exemplo
----------------


mongodb.yml

    - hosts: mongodb

      roles:
         - mongodb


inventory/prd/hosts

    [mongodb]
    192.168.0.1

License
-------

BSD

Informacoes sobre o autor
------------------

Esta role foi criada em 2018 por Wilton Felix (wilton.felix@leonardo-lab.com.br).
