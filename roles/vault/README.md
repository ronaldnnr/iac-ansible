Link para o Download do binario do vault

vault_download_url: "https://releases.hashicorp.com/vault/0.9.5/vault_0.9.5_linux_amd64.zip"

Diretorio onde vai ser extraido o binario do vault

vault_binary_path: "/usr/local/bin/"

backend para o vault

backend_vault: "consul"

Usuario do vault

vault_user: "vault"

Grupo do vault

vault_group: "vault"

Diretorio onde vai ficar a configuração do vault

vault_config_dir: "/etc/vault"

Diretorio onde vai ser gerado o arquivo com chaves do vault caso o valor do vault_init seja True

vault_keys_dir: "/opt/vault/keys"

Caso queria que o vault suba e rode o unseal no cluster

vault_init: "false"

Definir apenas se tiver a versão paga do vault

vault_ui: "false"

Path onde vai ser configurado os segredos do vault

vault_datacenter: "vault/"

Ip do Cosul que vai ser usado pelo vault

consul_ip: "{{ ansible_host }}"

Porta de Consul que vai ser usado pelo vault

consul_port: "8500"

Ip do node cluster Vault

vault_cluster_address: "http://{{ ansible_host }}"

Porta do vault

vault_port: "8200"

Token do consul usado para o vault

consul_acl_master_token: "1234567890"

Tempo que os token de segredos vão ser guardados

default_lease_ttl: "10h"

Tempo max que os token de segredos vão ser guardados

max_lease_ttl: "10h"



### Criador Wilton
