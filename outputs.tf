output "instance_name" {
  description = "Nome da EC2"
  value = aws_instance.bia-dev-tf.tags.Name
}

output "instance_id" {
  description = "ID da EC2"
  value = aws_instance.bia-dev-tf.id
}

output "instance_type" {
	description = "Tipo da EC2"
	value = aws_instance.bia-dev-tf.instance_type
}

output "instance_security_groups" {
	description = "SG da EC2"
	value = aws_instance.bia-dev-tf.security_groups
}

output "instance_private_ip" {
	description = "Private IP da EC2"
	value = aws_instance.bia-dev-tf.private_ip
}

output "instance_public_ip" {
	description = "Public IP da EC2"
	value = aws_instance.bia-dev-tf.public_ip
}