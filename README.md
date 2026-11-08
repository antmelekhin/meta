# Meta-configurations for my repositories

## Provision

```bash
export GITHUB_TOKEN='xxxxxxxxxxxxxx'
```

Then run from within this directory:

* `terraform init` to get the plugins
* `terraform plan` to see the infrastructure plan
* `terraform apply` to apply the infrastructure build

## importing an existing resource

REPO_NAME='my_repo'
terraform import "module.repositories[\"$REPO_NAME\"].github_repository.this" $REPO_NAME
