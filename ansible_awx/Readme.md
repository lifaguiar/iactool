# To Run...

* Install Oracle VirtualBox
* Install vagrant

After, run:

`vagrant up`

<p>After, a new server will be running on the address:</p>

* 10.9.10.2: master-1
* 10.9.11.2: worker-1

<p>You can login on each server with the following credentials:</p>

>ssh user: vagrant<br />
>ssh password: vagrant

<p>This credentials are well known by developers all alround the world using Vagrant.</p>

## Open AWX
<p>Once master-1 vm is done, you can access AWX console from address: `http://10.9.10.2/`</p>
<p>The worker-1 machine is just a slave to use with Ansible AWX. AWX will not need any other machine than master. You can use worker-1 as a target server to 
  run your own tests.</p>

## Send files to the servers
<p>If you need to send or copy files from the server, you can use tools using the protocol SCP (WinSCP) or even scp command line too. Your server is like any other linux server. </p>

## Hardening
<p>DO NOT CHANGE the private ip for your server to an address out of the range 10.0.0.0/8 (like 192.168.0.0/16 the default for Oracle VirtualBox) because you need to change the playbook roles to allow traffic from
this network. The server has hardening configuration allowing connections only from 10.0.0.0/8.</p>
