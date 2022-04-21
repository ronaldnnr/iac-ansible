Consul
=========

[![pipeline status](https://git.tray.net.br/infra/sre/iac-ansible/roles/consul/badges/master/pipeline.svg)](https://git.tray.net.br/infra/sre/iac-ansible/roles/consul/commits/master)


Consul é um service discovery com alta disponibilidade, uma ferramenta de chave valor projetada para facilitar a configuração de sistemas distribuídos.

Requerimentos
------------

Para utilizar esta role para criar um cluster, é necessario que seja definido o grupo de maquinas no inventário de hosts (pelo menos 3 nós) e, definir que um dos nós realize o bootstrap. ex:


    [consul]
    192.168.0.1 consul_bootstrap=true
    192.168.0.2
    192.168.0.3


Variaveis
--------------

Abaixo as variaveis da role, assim como seus padroes já definidos

    consul_download_url: "https://releases.hashicorp.com/consul/1.0.2/consul_1.0.2_linux_amd64.zip"

URL de download do binario do consul, caso queira realizar um upgrade esta URL deverá ser alterada
    
    consul_binary_path: "/usr/local/bin/"
    
Caminho do binario a ser salvo

    is_server: "true"
    
Define se o node deve ser um server votante ou um watcher/slave, deverá ser definido também no arquivo de inventário de hosts

    is_cluster: "true"

Configura a role para utilizacao em cluster, caso deseje utilizar apenas um node, este valor deverá ser definido como false

    consul_bootstrap: "false"
    
Especifica se o node em questao devera fazer o bootstrap, em um cluster este valor deverá ser realizado em apenas um dos nodes
    
    enable_acl: "false"
    
Habilita o ACL padrao.
    
    consul_user: "consul"
    consul_group: "consul"
    
Usuario e grupo que irá executar o servico, utilizado no arquivo de init do servico.
    
    consul_config_dir: "/etc/consul"

Diretorio padrao de configuracoes do servico
    
    consul_data_dir: "/opt/consul/data"

Diretorio onde ficará armazenado os dados do servico, uma boa pratica é utilizar um volume separado.
    
    consul_ui: "true"

Habilita a interface web do consul.
    
    consul_datacenter: "datacenter"

Nome para identificacao se utilizado mais de um cluster.

    acl_default_policy: "allow"
    acl_down_policy: "allow"
    acl_master_token: "1234567890"

Configuracao da ACL padrao.

    consul_node_name: "{{ ansible_hostname }}"

Nome do node, esta variavel deve ser alterada no inventario de hosts se preferir
    
    consul_daemon_loglevel: "DEBUG"

LogLevel de execucao do consul
    
    consul_cluster_crypt_key: "Qv3seRCoTJBYYIvtYOjN0A=="

Chave de autenticacao entre os nodes, deverá ser alterada na primeira execucao do cluster


Dependencias
------------

Nenhuma

Playbook de exemplo
----------------


consul.yml

    - hosts: consul
      
      roles:
         - consul
         

inventory/prd/hosts

    [consul]
    192.168.0.1 consul_bootstrap=true
    192.168.0.2
    192.168.0.3

License
-------

BSD

Informacoes sobre o autor
------------------

Esta role foi criada em 2018 por Daniel Requena (daniel.requena@leonardo-lab.com.br) e refatorada por Thiago Freitas (thiago.freitas@leonardo-lab.com.br).
