resource "aws_instance" "first-trail" {
  ami           = "ami-0e35ddab05955cf57"  # Change to your desired AMI ID
  instance_type = "t2.micro"                # Change the instance type if needed

  # Optional: Add tags to the EC2 instance
  tags = {
    Name = "MyTerraformInstance"
  }

  # Optional: Add a security group inline (you can also use an existing one)
  vpc_security_group_ids = [
    aws_security_group.allow_ssh.id
  ]

  # Optional: Specify key pair for SSH access (replace with your key name)
  key_name = "kiran"  # Replace with your key pair name

  # Optional: Block device mapping (EBS volume configuration)
  root_block_device {
    volume_size = 20  # Size in GB
    volume_type = "gp2"  # General Purpose SSD
  }
}

resource "aws_security_group" "allow_ssh" {
  name_prefix = "allow_ssh-"

  # Allow inbound SSH access on port 22 from anywhere
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Allow all outbound traffic
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
