Wordpress
================================================================================

[![pipeline status](https://git.tray.net.br/infra/sre/iac-ansible/roles/wordpress/badges/master/pipeline.svg)](https://git.tray.net.br/infra/sre/iac-ansible/roles/wordpress/commits/master)

Requerimentos
--------------------------------------------------------------------------

Variaveis
--------------------------------------------------------------------------

Abaixo as variaveis definidas na role:

Opção para habilitar ou desabilitar mysql na instalação do wordpress

    wordpress_mysql_enabled: true

Controle de versão do wordpress

    wordpress_version: 4.9.4

Nome do banco de dados do wordpress
    
    wordpress_database: wpdb

Nome do usuario wordpress

    wordpress_user: wordpress

Senha do usuario wordpress

    wordpress_password: wordpress

Host

    wordpress_host: localhost
    
Depêndencias
--------------------------------------------------------------------------

Essa role tem depêndecia com as roles do nginx e do mysql.

Playbook de exemplo
--------------------------------------------------------------------------

    ---
      - hosts: all
        roles:
            - wordpress

License
--------------------------------------------------------------------------

BSD

Informacoes sobre o autor
--------------------------------------------------------------------------

Esta role foi criada em 2018 por Guilherme Saijo (guilherme.saijo@leonardo-lab.com.br)