# ansible-tower-cluster

Requirements:

  - VirtualBox - created on version 6.0.4
  - Ansible - built with version 2.7.8

Instructions:

  - Clone Repo (`git clone https://github.com/benjdudas/ansible-tower-cluster.git`)
  - Launch Lab (`vagrant up`)
  - SSH into tower1 (`vagrant ssh tower1`)
  - Switch to root user and from cd to the Tower installer at `/root/`
  - Because the vm's have less RAM then required, comment out the preflight RAM check in (`./roles/preflight/tasks/main.yml`)
  - Run tower installer (`./setup`)
  - Edit host file for the Tower cluster lb (`echo '10.0.15.35 tower.ansible.com >> /etc/hosts`)
  - Connect to the Tower UI using the login info below to add license. 
  - Configuring remote host headers is required when fronting tower with a load-balancer (https://docs.ansible.com/ansible-tower/latest/html/administration/proxy-support.html#proxy-support). Run the provided script in ansible-tower-cluster dir to set this up.
    ```
    chmod +x ./provisioning/scripts/headers.sh && ./provisioning/scripts/headers.sh
    ```

Login Info:
```
   hostname: https://tower.ansible.com
   username: admin
   password: ansible
```
