NodeJS
================================================================================

[![pipeline status](https://git.tray.net.br/infra/sre/iac-ansible/roles/mysql/badges/master/pipeline.svg)](https://git.tray.net.br/infra/sre/iac-ansible/roles/mysql/commits/master)

Requerimentos
--------------------------------------------------------------------------------

Variaveis
--------------------------------------------------------------------------------

Abaixo as variaveis definidas na role:

Versão do nodejs que será instalada
    
    nodejs_version: 8

Depêndencias
--------------------------------------------------------------------------------

Essa role não tem nenhuma depêndencia

Playbook de exemplo
--------------------------------------------------------------------------------

    ---
      - hosts: all
        roles:
            - nodejs

License
--------------------------------------------------------------------------------

BSD

Informacoes sobre o autor
--------------------------------------------------------------------------------

Esta role foi criada em 2018 por Guilherme Saijo (guilherme.saijo@leonardo-lab.com.br)