Supervisord
=========

[![pipeline status](https://git.tray.net.br/infra/sre/iac-ansible/roles/supervisord/badges/master/pipeline.svg)](https://git.tray.net.br/infra/sre/iac-ansible/roles/supervisord/commits/master)

Supervisor é um sistema que permite aos seus usuários monitorar e controlar uma série de processos em sistemas operacionais UNIX like.

Requerimentos
------------
Nenhum

Variaveis
--------------

Nenhum

Dependencias
------------

Nenhum

Playbook exemplo
----------------

    - hosts: all
      roles:
         - { role: supervisord }

Licença
-------

BSD

Author Information
------------------

Esta role foi desenvolvida por Thiago Freitas (thiago.freitas@leonardo-lab.com.br) em 03/2018
