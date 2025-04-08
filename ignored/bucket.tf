# This Terraform configuration file creates an S3 bucket in AWS.
# It includes a bucket name, access control list (ACL), and tags for organization.  
resource "aws_s3_bucket" "my_bucket" {
  bucket = "s3.kiran.vault"  # Change this to a globally unique bucket name

  tags = {
    Name        = "kiran-vault-bucket"
    Environment = "Dev"
  }
}

# Use the aws_s3_bucket_acl resource to set the ACL for the bucket
resource "aws_s3_bucket_acl" "my_bucket_acl" {
  bucket = aws_s3_bucket.my_bucket.id
  acl    = "private"  # You can change this ACL to other types like 'public-read' based on your needs
}
