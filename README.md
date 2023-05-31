
## Overview
This repo is designed to generate a grafana monitoring dashboard and install all reporting jobs. 

## Prerequisites
This playbook assumes all hosts are networked via tailscale.

## How to Use
1. First open vars > vault_sample.yml and fill in a password and API token. Then resave this as vault.yml. The Makefile in this repo includes jobs to encrypt and decrypt a file named vault.yml. This was borrowed from: https://github.com/ironicbadger/infra

2. Edit group_vars/all.yml to adjust usernames

3. Edit server.yml to define which tasks should run on which hosts

4. For any sources that run the sanoid checks the telegraf user needs to be able to run sanoid as root. I was nervous to have ansible modify /etc/sudoers. Here is an example of what to put in /etc/sudoers
```
telegraf ALL= NOPASSWD: /usr/sbin/sanoid
```

## Known issues
Setting up the initial influx database is not 'idempotent' so when the playbook runs again it will throw an error which is ignored. 