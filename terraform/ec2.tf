resource "aws_key_pair" "deployer" {
  key_name   = "terraform-automate-key"
  public_key = file("C:/Users/moham/Desktop/terraform project/terraform/terraform-key.pub")
}

resource "aws_default_vpc" "default" {
  # This creates and references the default VPC in your account.
}

resource "aws_security_group" "awssecurity" {
  name        = "allow-ssh"
  description = "Security group to allow SSH"
  vpc_id      = aws_default_vpc.default.id

  ingress {
    description = "Allow SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "ssh-security-group"
  }
}

resource "aws_instance" "my_instance" {
  ami           = "ami-0d1b5a8c13042c939"
  instance_type = "t2.micro"
  key_name      = aws_key_pair.deployer.key_name

  vpc_security_group_ids = [aws_security_group.awssecurity.id]

  tags = {
    Name = "my-terraform-instance"
  }
}
