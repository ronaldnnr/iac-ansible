Jenkins
=========

[![pipeline status](https://git.tray.net.br/infra/sre/iac-ansible/roles/jenkins/badges/master/pipeline.svg)](https://git.tray.net.br/infra/sre/iac-ansible/roles/jenkins/commits/master)

Jenkins é um servidor de Integração Contínua open-source feito em Java, pode ser rodado de forma standalone ou como uma web aplicação dentro de um servidor web.

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
         - { role: jenkins }

Licença
-------

BSD

Author Information
------------------

Esta role foi desenvolvida por Thiago Freitas (thiago.freitas@leonardo-lab.com.br) em 03/2018
