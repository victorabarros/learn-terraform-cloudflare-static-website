terraform-init:
	@terraform init

terraform-plan:
	@terraform plan -var-file=terraform.tfvars

terraform-apply:
	@terraform apply -auto-approve

terraform-destroy:
	@terraform destroy -auto-approve

deploy-website: terraform-init terraform-plan terraform-apply

destroy-website: terraform-destroy

redeploy-website: destroy-website deploy-website
