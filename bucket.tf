provider "aws" {
  region = "ap-south-1"  # Replace with your desired region
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "s3.kiran.vault"  # Change this to a globally unique bucket name
  acl    = "public-read"  # You can change this ACL to other types like 'public-read' based on your needs

  tags = {
    Name        = "kiran-vault-bucket"
    Environment = "Dev"
  }
}
