resource "aws_instance" "ec2-server" {
  ami = var.ami_id
  instance_type = var.instance_type
  key_name = var.kp
  security_groups = [aws_security_group.my-SG.name]
}

resource "aws_security_group" "my-SG" {
  name = "security group"

  ingress {
    from_port = var.http
    to_port = var.http
    protocol = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port = 0
    to_port = 0
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}