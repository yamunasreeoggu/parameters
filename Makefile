default:
	git pull
	rm -rf .terraform
	terraform init
	terraform apply -auto-approve
apply:
	terraform init
	terraform apply -auto-approve