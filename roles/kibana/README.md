Kibana
================================================================================

[![pipeline status](https://git.tray.net.br/infra/sre/iac-ansible/roles/kibana/badges/master/pipeline.svg)](https://git.tray.net.br/infra/sre/iac-ansible/roles/kibana/commits/master)

Requerimentos
--------------------------------------------------------------------------

Variaveis
--------------------------------------------------------------------------

Abaixo as variaveis definidas na role:

Opção para definir a quantidade de memoria para inicialização da jvm.

    Xms_size: 1g

Opção para definir o maximo de memoria que pode ser alocada para jvm.

    Xmx_size: 1g

Opção para definir a versão do JDK para familia RedHat.

    RedHat_Version: 1.8.0

Opção para definir a versão do JDK para familia Debian.
    
    Debian_Version: 8
    
Depêndencias
--------------------------------------------------------------------------

Essa role não tem nenhuma depêndencia

Playbook de exemplo
--------------------------------------------------------------------------

    ---
      - hosts: all
        roles:
            - kibana

License
--------------------------------------------------------------------------

BSD

Informacoes sobre o autor
--------------------------------------------------------------------------

Esta role foi criada em 2018 por Guilherme Saijo (guilherme.saijo@leonardo-lab.com.br)
         
