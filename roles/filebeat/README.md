Filebeat
=========

[![pipeline status](https://git.tray.net.br/infra/sre/iac-ansible/roles/filebeat/badges/master/pipeline.svg)](https://git.tray.net.br/infra/sre/iac-ansible/roles/filebeat/commits/master)

O Filebeat ajuda você a facilitar coisas simples, oferecendo uma maneira leve de encaminhar e centralizar logs e arquivos.

Requerimentos
------------

Nenhum.

Variaveis
--------------

Variavel usada para definir a versão do filebeat a ser instalada.

    filebeat_version: 6.2.4

Define output a ser utilizado, por padrao elasticsearch.

    filebeat_output: elasticsearch

Define os endpoints dos outputs a serem utilizados.

    output_hosts:
      elasticsearch:
        - 127.0.0.1
      logstash:
        - 127.0.0.1

Define os fields a serem adicionados.

    filebeat_fields:
      environment: "staging"
      filebeat: "true"

Define os prospectors a serem utilizados.

    filebeat_prospectors:
      system:
        log_type: log
        paths:
          - /var/log/messages
          - /var/log/secure
          - /var/log/cron
          - /var/log/*.log
          - /var/log/dmesg
          - /var/log/tuned/tuned.log
      nginx:
        log_type: log
        paths:
          - /var/log/nginx/*.log

Define os modulos do filebeat que devem ser habilitados

    filebeat_modules:
      - disabled

Dependências
------------

Nenhuma.

Playbook de exemplo
----------------

filebeat.yml

    - hosts: all
      vars:
        filebeat_output: elasticsearch
        output_hosts:
          elasticsearch:
            - 127.0.0.1

      roles:
         - filebeat

License
-------

BSD

Informações sobre o autor
------------------

Essa role foi criada em 2018 por Thiago Freitas (thiago.freitas@leonardo-lab.com.br).
