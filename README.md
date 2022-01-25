# Mumble-server

## Setup
Install terraform; https://www.terraform.io/downloads <br>
Install awscli: https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html

## Terraform commands
(in terraform directory)<br>
`terraform init` - Run once to initialize project<br>
`terraform plan` - Show configuration plan<br>
`terraform apply` - Apply configuration<br>
`terraform apply -var-file="vars.tfvars"` - Apply with custom variables<br>
`terraform destroy` - Delete resources
