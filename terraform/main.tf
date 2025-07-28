module "dev-app" {
  source             = "./aws_modules"
  my_env             = "dev"
  ami                = "ami-0d1b5a8c13042c939"
  instance_type      = "t2.micro"
  dynamo_table_name  = "dev-table"
  instance_count     = 1
}

module "stag-app" {
  source             = "./aws_modules"
  my_env             = "stag"
  ami                = "ami-0d1b5a8c13042c939"
  instance_type      = "t2.medium"
  dynamo_table_name  = "stag-table"
  instance_count     = 2
}

module "prd-app" {
  source             = "./aws_modules"
  my_env             = "prd"
  ami                = "ami-0d1b5a8c13042c939"
  instance_type      = "t2.large"
  dynamo_table_name  = "prd-table"
  instance_count     = 3
}
