terraform {
  required_providers {
    aws = "~> 2.70"
  }
}

provider "aws" {
  profile = "jesse23"
  region  = var.region
}

resource "aws_instance" "example" {
  ami           = var.amis[var.region]
  instance_type = "t2.micro"
}

resource "aws_eip" "ip" {
  vpc      = true
  instance = aws_instance.example.id
}

output "ami" {
  value = aws_instance.example.ami
}


output "ip" {
  value = aws_eip.ip.public_ip
}

// terraform apply -var 'region=us-west-2'
// terraform apply -var-file="secret.tfvars" -var-file="production.tfvars"
// export TF_VAR_region=us-west-2