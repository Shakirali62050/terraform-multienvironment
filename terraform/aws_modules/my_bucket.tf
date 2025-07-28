resource "aws_s3_bucket" "my_app_bucket" {
     bucket = "${var.my_env}-my-app-bucket-demo-shakir"
    tags = {
            Name = "${var.my_env}-test-my-app-bucket"
            environment = var.my_env
        }
}