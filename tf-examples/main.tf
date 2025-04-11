terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}


# provision to us-east-2 region
provider "aws" {
  region  = "us-east-2"
}
resource "aws_instance" "app_server" {
  ami           = "ami-0100e595e1cc1ff7f"
  instance_type = "t3.micro"
  key_name      = "app-ssh-key"
tags = {
    Name = var.ec2_name
  }
}
