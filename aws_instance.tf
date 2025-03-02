resource "aws_instance" "bia-dev-tf" {
  ami = "ami-0f37c4a1ba152af46"
  instance_type = "t4g.micro"
  tags = {
    ambiente = "dev"
    Name = var.instance_name
  }
  subnet_id = local.subnet_zona_d
  associate_public_ip_address = true
  // ipv6_address_count = 1 // Isso é para adicionar IPV6
  vpc_security_group_ids = [ 
    aws_security_group.bia-dev.id
   ]

  iam_instance_profile = aws_iam_instance_profile.role_acesso_ssm.name

  user_data = "${file("userdata_biadev.sh")}"
  //key_name = "nome-da-key-na-aws" // Isso é para adicionar uma chave para acesso ssh
}