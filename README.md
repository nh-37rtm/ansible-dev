

# README

allow to spawn a local Ansible developper environement in minutes using docker compose

## using ansible example

````
ansible-playbook -i ./inventory/test.inv ./playbooks/machine.yml
ansible-playbook -i ./inventory/kube.inv ./playbooks/kube_init.yml
ansible-playbook -i ./inventory/systemd.inv ./playbooks/systemd-resolved/dns_resolution.yml

````
