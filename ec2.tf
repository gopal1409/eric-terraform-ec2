resource "aws_instance" "web" {
  ami           = data.aws_ami.awzlinux2.id
  instance_type = var.instance_type
  user_data = file("${path.module}/app1-install.sh")
  key_name = var.instance_keypair
  tags = {
    Name = "ec2-demo"
  }
}