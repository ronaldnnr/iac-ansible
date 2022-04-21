# Ansible NFS Server

Ansible role for install and configure NFS Server in Debian

## Getting Started

Follow the steps to use the playbook

### Requirements
```
- ufw installed
```
### Variables
You can find these variables in /defaults/main.yml
```
	- network_cidr = To configure network cidr or ip of your client host e.g: 10.10.0.0/24, 172.151.123.187
	- nfs_folder = The path for the folder you want to make acessible to your clients e.g /var/nfs/, /var/nfs/software, /home
```

## Exporting /home directory
If you want to export a home directory you must edit the template file located in /templates/exports.j2, exports is a file which controls file systems exported to remote hosts and specifies options.
By default NFS translates requests from a root user remotely into a non-privileged user on the server, this was intended as secutiry feature to prevent a root account on the client from using the file system of the host as root, to disable that you must use the no_root_squash option

Your template file should look like this:
```
	/home        10.10.0.0/24(rw,sync,no_subtree_check,no_root_squash)
```
### Permissions
```  
	rw - Permit client to read and write in the folder
	sync - Prevent data corruptions
	no_subtree_check - Disable checking wheter a file is actually still available in the exported tree for every request
```
For more parameters, Google it.
