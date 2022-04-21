app_python
=========

[![pipeline status](https://git.tray.net.br/infra/sre/iac-ansible/roles/app_python/badges/master/pipeline.svg)](https://git.tray.net.br/infra/sre/iac-ansible/roles/app_python/commits/master)

Role para instalação de aplicacoes python.

Requerimentos
------------

Nenhum

Variaveis
--------------
Abaixo variaveis da role assim como seus valores padroes

    python_version: 3.6.4

Define a versao do python que irá executar a aplicacão

    app_path: /data

Caminho onde a aplicacão assim como os assets serão instalados.

    app_repository: https://github.com/django-ve/helloworld.git

Endpoint git de onde será clonada a aplicacão.

    app_default_port: 8000

Porta padrao onde a aplicacão irá rodar

    app_start_cmd: "python manage.py migrate && python manage.py runserver"

Comando a ser executado para iniciar a aplicacão.

    app_user: deploy

Nome usuário que irá executar a aplicacão.

    app_group: deploy

Nome de grupo que irá rodar a aplicação.


Dependencias
------------

As roles dependentes são:

    pyenv
    supervisord
    nginx

Playbook Exemplo
----------------

    - hosts: webservers
      vars:
        python_version: 3.6.4
        app_repository: https://github.com/django-ve/helloworld.git

      roles:
         - app_python

Licença
-------

BSD

Informações sobre o autor
------------------

Esta role foi desenvolvida por Thiago Freitas (thiago.freitas@leonardo-lab.com.br) em 03/2018.
