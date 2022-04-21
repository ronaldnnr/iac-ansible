Instalação Terraform
=========

Essa role faz a instalação da utilidade terraform

Requirementos
------------

Não há requerimentos para essa role

Variáveis
--------------

tf_version: '0.11.7'
Deve-se popular essa variável com a versão do terraform que você deseja instalar

Playbook de exemplo
----------------
    - hosts: servers
      vars:
        tf_version: '0.11.7'

      roles:
         - terraform

Informações sobre o autor
------------------
Esta role foi desenvolvida por Luis Palacios (luis.palacios@leonardo-lab.com.br) em 05/2018.
