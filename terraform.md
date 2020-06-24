### Terraform Plan

```
terraform init -no-color -input=false
terraform plan -detailed-exitcode -no-color -input=false -out infra_plan.out
```

### Terraform apply

```
terraform init -no-color -input=false
terraform apply -no-color -input=false infra_plan.out

```

### Important Links
- [Terraform 0.12 migration lession learn](https://medium.com/oracledevs/lessons-learned-when-upgrading-to-terraform-0-12-6d894d3ab20e)
- [Best Practice Terrafor Resource](https://www.terraform.io/docs/configuration/resources.html)
- [Terraform 0.12 and Newer Syntex , tips & Tricks](https://www.terraform.io/docs/configuration/index.html)
