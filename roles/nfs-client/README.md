# Ansible NFS Client

Role for install and configure nfs client side


## Requirements:
```
- You must know the NFS Server IP
- You must know the folder where exported in NFS Server
```

## Variables:
```
- nfs_client_folder = The path for folder you want to mount in the client
- nfs_server_ip = The IP of NFS Server
- nfs_server_folder = Folder previously created and exported in NFS Server
```
