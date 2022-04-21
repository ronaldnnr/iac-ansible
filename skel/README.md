# Ansible skeleton


Este é um esqueleto de uso do ansible, com algumas playbooks de exemplo, as roles devem ser baixadas da seguinte forma:

```
$ ansible-galaxy install -r playbook.requirements.yml -p roles
```

de acordo com o playbook que deseja utilizar. ex:

```
$ ansible-galaxy install -r zabbix-server.requirements.yml -p roles
$ ansible-playbook -i inventory/dev zabbix-server zabbix-server.yml
```

Qualquer duvida, procurar um dos owners do projeto.






