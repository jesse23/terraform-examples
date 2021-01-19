output "private_addresses" {
  value = aws_instance.ubuntu[*].private_dns
}

output "first_tags" {
  value = aws_instance.ubuntu[0].tags
}