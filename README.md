Clone the repositority into the local.
change the values in the terraform.tfvars file as per the azure enivornment that needs deployment
initialize terraform and make plan using the terraform plan --out=app-service-plan
Fix errors if any in the plan and deploy the infra (azure-app-service) using terraform apply app-service-plan
