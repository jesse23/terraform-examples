variable "region" {
  // default = "us-west-2"
}

variable "amis" {
  type = "map"
  default = {
    "us-west-2": "ami-08d70e59c07c61a3a"
  }
}