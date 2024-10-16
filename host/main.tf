resource "aws_instance" "host" {
  ami                   = var.ami_id
  instance_type         = var.instance_type
  subnet_id             = var.public_subnet_id
  security_groups       = [var.public_sg_id]
  key_name              = var.key_name

  user_data = var.user_data
  tags = {
    Name = var.instance_name
  }


}
resource "local_file" "instance_ip" {
  content  = aws_instance.host.public_ip
  filename = "../${path.root}/${var.instance_name}.txt"
}