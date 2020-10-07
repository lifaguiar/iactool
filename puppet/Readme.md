# To Run...

* Install Oracle VirtualBox
* Install vagrant

After, run:

`vagrant up`

<p>After, a new server will be running on the address:</p>

* 10.155.2.2: opendj-0

<p>If you want to test the replication, create two servers by changing the parameter</p>

`instance_count = 1`

<p>to the number of instances you want. Pay attention to used memory</p>
<p>, the parameter 

`vm_memory`

in the Vagrantfile. Each server will created using that number of physical memory</p>
<p>using your host memory to allocate to each server. Change the parameter to accomodate your running servers.</p>

<p>Once the servers are up and running, each new one will be available in the address 10.155.2.x where x is 3, 4, 5 and so on, depending the number of your servers. For a number of two servers, they will be available at:</p>

* 10.155.2.2: opendj-0
* 10.155.2.3: opendj-1

<p>You can login on each server with the following credentials:</p>

>ssh user: vagrant<br />
>ssh password: vagrant

<p>This credentials are well known by developers all alround the world using Vagrant.</p>

## Send files to the servers
<p>If you need to send or copy files from the server, you can use tools using the protocol SCP (WinSCP) or even scp command line too. Your server is like any other linux server. </p>

## Hardening
<p>DO NOT CHANGE the private ip for your server to an address out of the range 10.0.0.0/8 (like 192.168.0.0/16 the default for Oracle VirtualBox) because you need to change the playbook roles to allow traffic from
this network. The server has hardening configuration allowing connections only from 10.0.0.0/8.</p>