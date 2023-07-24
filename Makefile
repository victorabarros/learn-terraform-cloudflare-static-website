terraform-fmt:
	@terraform fmt

terraform-init: terraform-fmt
	@rm -rf .terraform.lock.hcl
	@terraform init

terraform-plan: terraform-fmt
	@terraform plan -var-file=terraform.tfvars

terraform-apply: terraform-fmt
	@terraform apply -auto-approve

terraform-destroy:
	@terraform destroy -auto-approve

deploy-website: terraform-init terraform-plan terraform-apply

destroy-website: terraform-destroy

redeploy-website: destroy-website deploy-website
