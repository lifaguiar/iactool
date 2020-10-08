# To Run...

* Install Oracle VirtualBox
* Install vagrant

After, run:

`vagrant up`

<p>After, a new server will be running on the address:</p>

* 10.10.10.2: master-1
* 10.10.11.2: agent-1

<p>You can login on each server with the following credentials:</p>

>ssh user: vagrant<br />
>ssh password: vagrant

<p>This credentials are well known by developers all alround the world using Vagrant.</p>

## Deploy Puppet and Puppet Agent
<p>Vagrant will deploy puppet-server and puppet-agent accordingly. Once up, puppetmaster will allow self register nodes from lincolmlabs.cloud (change for your needs). When the agent finished deployment, the agent will contact puppetmaster to register itself. Once done, you can deploy your
puppet codes to puppet master and see how the will execute on agent. Vagrant will create an empty
site.pp in this location `/etc/puppetlabs/code/environments/production/manifests/site.pp`. You can
edit the file and make your puppet deployments

## Send files to the servers
<p>If you need to send or copy files from the server, you can use tools using the protocol SCP (WinSCP) or even scp command line too. Your server is like any other linux server. </p>

## Hardening
<p>DO NOT CHANGE the private ip for your server to an address out of the range 10.0.0.0/8 (like 192.168.0.0/16 the default for Oracle VirtualBox) because you need to change the playbook roles to allow traffic from
this network. The server has hardening configuration allowing connections only from 10.0.0.0/8.</p>