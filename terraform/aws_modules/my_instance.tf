resource "aws_instance" "my_instance" {
     ami = var.ami
     count = var.instance_count
  instance_type = var.instance_type


  tags = {
    Name = "$ {var.my-env}-terraform-instance"
  }
}