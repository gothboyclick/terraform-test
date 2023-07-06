terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.6"
    }
    random ={
        source = "hashicorp/random"
        version = "~> 3"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile
}
resource "aws_instance" "ifgoiano-web" {
  ami           = var.instance_ami
  instance_type = var.instance_type
  
  tags = var.instance_tags
}
