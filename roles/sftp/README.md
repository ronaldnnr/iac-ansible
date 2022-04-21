SFTP
=========

[![pipeline status](https://git.tray.net.br/infra/sre/iac-ansible/roles/sftp/badges/master/pipeline.svg)](https://git.tray.net.br/infra/sre/iac-ansible/roles/sftp/commits/master)


SFTP, que significa SSH File Transfer Protocol, ou Secure File Transfer Protocol, é um protocolo separado, empacotado com SSH que funciona de forma similar em cima de uma conexão segura. A vantagem é a capacidade de prover uma conexão segura para transferir arquivos, e cruzar o sistema de arquivo tanto na máquina local quanto na remota.

Requerimentos
------------

Para utilizar esta é necessario que seja definido o grupo de maquinas no inventário de hosts. ex:


    [sftp]
    192.168.0.1

Variáveis
--------------

Abaixo as variaveis da role, assim como seus padroes já definidos

    sftp_username: santander
  
Define o usuário que será criado no servidor para conexão sftp
    
    sftp_authorized_key_file: "{{ lookup('file', lookup('env','HOME') + '/.ssh/id_rsa.pub') }}"
    
Chave pública para conexão

Dependências
------------

Nenhuma

Playbook de exemplo
----------------


sftp.yml

    - hosts: sftp
      
      roles:
         - sftp
         

inventory/prd/hosts

    [sftp]
    192.168.0.1

License
-------

BSD

Informações sobre o autor
------------------

Esta role foi criada em 2018 por Eduardo Rozario (eduardo.rozario@leonardo-lab.com.br)
