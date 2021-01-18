output "web_public_ip" {
  value = "${aws_instance.web.public_ip}:8080"
}

output "application-url" {
  value = "${aws_instance.web.public_dns}/index.php"
}

output "ami_value" {
  value = lookup(var.aws_amis, var.aws_region)
}

output "web_security_group_ids" {
  value = concat([aws_security_group.sg_22.id, aws_security_group.sg_8080.id])
}

# ssh ubuntu@$(echo "aws_instance.web.public_ip" | terraform console) -i ssh_key