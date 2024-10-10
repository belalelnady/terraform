resource "tls_private_key" "private_key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}


resource "aws_key_pair" "key_pair" {
  key_name   = var.key_name
  public_key = tls_private_key.private_key.public_key_openssh
}

 
resource "local_file" "private_key_pem" {
  content  = tls_private_key.private_key.private_key_pem
  filename = "../${path.root}/${var.key_name}.pem"
}

 