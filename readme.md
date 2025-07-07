https://registry.terraform.io/namespaces/hashicorp
```sh
terraform init
terraform plan
terraform apply
terraform destroy
terraform plan -out=./plan # location to store plan in dir
terraform destroy -auto-approve # destroy withot confirmation 
terraform apply -auto-approve # apply without confirmation
terraform destroy -target=type.local_name # local_sensitive_file.tf_sensitive_example1
terraform state list
terraform stste show type.local_name # terraform state show local_sensitive_file.tf_sensitive_example1

terraform refresh # only update the terraform state file
```

```sh
# variable via CLI
terraform pplan -var="<variable_name>=<value>"
terraform plan -var="filename=via-cli"
terraform plan -var-file="<file_location> # file name terraform.tfvars default take this
*.auto.tfvars
TF_VAR_<name> - Enverement variable

export TF_VAR_filename="form-env-var"
```
Module: https://registry.terraform.io/browse/modules

Meta argument:
https://developer.hashicorp.com/terraform/language/meta-arguments/depends_on
depends_on
count
for_each
provider
lifecycle


State
