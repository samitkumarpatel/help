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
