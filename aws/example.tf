terraform {
  required_providers {
    aws = "~> 2.70"
  }
}

provider "aws" {
  profile = "jesse23"
  region  = "us-west-2"
}

resource "aws_instance" "example" {
  ami           = "ami-830c94e3"
  instance_type = "t2.micro"
}
