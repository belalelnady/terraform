resource "aws_instance" "public_instance" {
  ami                   = var.ami_id
  instance_type         = var.instance_type
  subnet_id             = var.public_subnet_id
  security_groups       = [var.public_sg_id]
  key_name              = var.key_name

  tags = {
    Name = "web-app-host"
  }

}
