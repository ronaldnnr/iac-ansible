Jetty
=========

[![pipeline status](https://git.tray.net.br/infra/sre/iac-ansible/roles/jetty/badges/master/pipeline.svg)](https://git.tray.net.br/infra/sre/iac-ansible/roles/jetty/commits/master)

Jetty é um servidor HTTP e Servlet Container 100% escrito em Java.

Requerimentos
------------

Nenhum

Variaveis
--------------
Versao do jetty a ser instalada

    jetty_version: 9.4.9.v20180320

Habilita ou nao o proxy

    jetty_enable_proxy: true

Caminho da instalacao do Jetty

    jetty_install_path: /opt

Caminho dos arquivos web a serem hospedados

    jetty_webapps_path: /webapps

Dependencias
------------

  * nginx
  * java

Playbook Exemplo
----------------

jetty.yml

    - hosts: all
      roles:
         - jetty

License
-------

BSD

Informacoes sobre o autor
------------------

Esta role foi criada em 2018 por Thiago Freitas (thiago.freitas@leonardo-lab.com.br).
