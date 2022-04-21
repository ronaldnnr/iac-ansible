Sonarqube
=========

[![pipeline status](https://git.tray.net.br/infra/sre/iac-ansible/roles/sonarqube/badges/master/pipeline.svg)](https://git.tray.net.br/infra/sre/iac-ansible/roles/sonarqube/commits/master)

SonarQube é uma plataforma de código fonte aberto para a análise da qualidade do código.

Requerimentos
------------
Nenhum

Variaveis
--------------

    sonarqube_version: 5.6.6

Define a versao a ser instalada do SonarQube

Dependencias
------------

Nenhum

Playbook exemplo
----------------

    - hosts: all
      roles:
         - { role: sonarqube }

Licença
-------

BSD

Informações sobre o autor
------------------

Esta role foi desenvolvida por Thiago Freitas (thiago.freitas@leonardo-lab.com.br) em 03/2018
