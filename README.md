this is a step-by-step configuration of debian vm and some explanation of how docker work

i've chosen debian to complete this project

i will skip installation part, just want to say that when you will install software, you should to choose nothing except ssh.

let's start install important software for debian. 

commands to use:

``` apt install -y sudo ufw docker docker-compose make openbox xinit kitty firefox-esr vim ```

after that set up ssh port and permissions.

```
vim /etc/ssh/sshd_config
```

port should be 42
give the permission to connect to the root (don't do it in regular situations). also you should open ufw ports 42, 80 and 443. use ``` ufw status ``` to check permissons. ```ufw allow <port_number>``` to open port.
after that shutdown your vm and go to the settings of your virtual machine. find "Network" -> "Advanced" -> "Port Forwarding". Set all rules for each port.
