Nexus
================================================================================
[![pipeline status](https://git.tray.net.br/infra/sre/iac-ansible/roles/nexus/badges/master/pipeline.svg)](https://git.tray.net.br/infra/sre/iac-ansible/roles/nexus/commits/master)
Nexus é um gerenciador de repositórios

Requerimentos
--------------------------------------------------------------------------------
Não há

Variaveis
--------------------------------------------------------------------------------
Abaixo as variaveis definidas na role:

`OPEN_JDK:` Versão do JDK a ser instalada

`NEXUS_USER:` Nome do usuário do Nexus

`NEXUS_GROUP:` Nome do grupo do Nexus

`NEXUS_DIRECTORY:` Diretório de instalação do Nexus

`NEXUS_DOWNLOAD_URL:` URL para download do Nexus

Depêndencias
--------------------------------------------------------------------------------
Essa role não tem nenhuma depêndencia

Playbook de exemplo
--------------------------------------------------------------------------------
    ---
      - hosts: nexus
        roles:
            - nexus

License
--------------------------------------------------------------------------
BSD

Informacoes sobre o autor
--------------------------------------------------------------------------
Esta role foi criada em 2018 por Caian Ertl (caian.ertl@leonardo-lab.com.br)
