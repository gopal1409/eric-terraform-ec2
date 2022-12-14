resource "aws_security_group" "vpc-ssh" {
  name        = "vpc-ssh"
  description = "Allow ssh inbound traffic"
  #vpc_id      = aws_vpc.main.id

  ingress {
    description      = "allow 22 port"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
   
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow_ssh"
  }
}