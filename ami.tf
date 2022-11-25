data "aws_ami" "awzlinux2" {
  #$xecutable_users = ["self"]
  most_recent      = true
  #name_regex       = "^myami-\\d{3}"
  owners           = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-gp2"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  filter {
    name   = "architecture"
    values = ["x86_64"]
  }
}