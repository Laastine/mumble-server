# Mumble-server

Automated mumble-server setup for AWS EC2.

## Setup
Install terraform; https://www.terraform.io/downloads <br>
Install awscli: https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html <br>
Install ansible: https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html

## Terraform commands
(in terraform directory)<br>
`terraform init` - Run once to initialize project<br>
`terraform plan -var-file="vars.tfvars"` - Show configuration plan<br>
`terraform apply -var-file="vars.tfvars" -auto-approve` - Apply with custom variables<br>
`terraform destroy -var-file="vars.tfvars" -auto-approve` - Delete resources

## Ansible

Run `ansible-playbook -i mumble-server.ini mumble-server.yml --private-key="ssh-key-here"`
