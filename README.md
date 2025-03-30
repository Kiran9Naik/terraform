# terraform
entire practice on terraform
<<<<<<< HEAD

firstly i'm installing terraform bin file in my local system 

and then adding path variable in path of system variables 

check terraform version is it able to access from vscode or not

creating provider.tf for getting resoure details like (AWS,AZURE,GCP..)

once terraform init in place downloaded all aws provider data

written main.tf file to create a aws EC2, SG from terraform apply 

used .env for reading the access-key, secret-key data from .gitignore for security purpose without exposing the data out side the org.

using the below command exposing values as a envs 

Get-Content .env | ForEach-Object { $name, $value = $_ -split '='; Set-Item -Path "env:$name" -Value $value }

echo $env:AWS_ACCESS_KEY_ID
echo $env:AWS_SECRET_ACCESS_KEY

check the values and run the 
terraform plan check the changes and run 

terraform apply 
=======
>>>>>>> 8c8ee1a6074f2320d39717c3161557e9d9d74b9f
