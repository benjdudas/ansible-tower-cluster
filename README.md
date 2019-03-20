# ansible-tower-cluster

Requirements:

  - VirtualBox - created on version 5.2.8
  - Ansible - built with version 2.5.0

Instructions:

  - Clone Repo (`git clone https://github.com/benjdudas/ansible-tower-cluster.git`)
  - Launch Lab (`vagrant up`)
  - SSH into tower1 (`vagrant ssh tower1`)
  - Switch to root user and from cd to the Tower installer at `/root/`
  - Because the vm's have less RAM then required, comment out the preflight RAM check in (`./roles/preflight/tasks/main.yml`)
  - Run tower installer (`./setup`)
  - Edit host file for the Tower cluster lb (`echo '10.0.15.35 tower.ansible.com >> /etc/hosts`)
  - Connect to Tower UI: (`https://tower.ansible.com`)

Login Info:
```
   username: admin
   password: ansible
```
