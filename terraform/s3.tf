resource "aws_s3_bucket" "my-bucket-a" {
    bucket = "my-app-bucket-demo-shakir"
    tags = {
            Name = "test-my-app-bucket"
        }
}