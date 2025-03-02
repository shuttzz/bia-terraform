resource "aws_security_group" "bia-dev" {
  name = "bia-dev"
  description = "Acesso da maquina de trabalho"
  vpc_id = local.vpc_id

  ingress {
    description = "liberado para o mundo"
    from_port = 3001
    to_port = 3001
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = ""
    cidr_blocks      = ["0.0.0.0/0"]
    from_port        = 0
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "-1"
    security_groups  = []
    self             = false
    to_port          = 0
  }
}