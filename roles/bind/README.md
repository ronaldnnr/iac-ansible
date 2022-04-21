Bind
================================================================================

[![pipeline status](https://git.tray.net.br/infra/sre/iac-ansible/roles/bind/badges/master/pipeline.svg)](https://git.tray.net.br/infra/sre/iac-ansible/roles/bind/commits/master)

Named é um DNS server, parte da distribuição BIND 9 da ISC.

Requerimentos
--------------------------------------------------------------------------------
Não há

Variaveis
--------------------------------------------------------------------------------

Abaixo as variaveis definidas na role:

vpc_dns_ip: Endereço IP do servidor de DNS

Depêndencias
--------------------------------------------------------------------------------

Essa role não tem nenhuma depêndencia

Playbook de exemplo
--------------------------------------------------------------------------------
    ---
      - hosts: bind
        roles:
            - bind

License
--------------------------------------------------------------------------

BSD

Informacoes sobre o autor
--------------------------------------------------------------------------

Esta role foi criada em 2018 por Luis Palacios (luis.palacios@leonardo-lab.com.br)
