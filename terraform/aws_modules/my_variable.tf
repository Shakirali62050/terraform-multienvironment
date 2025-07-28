variable "my_env" {
  description = "The environment for the app"
  type        = string
}

variable "instance_type" {
  description = "Value of the instance type"
  type        = string
}

variable "ami" {
  description = "AMI ID for the instance"
  type        = string
}

variable "instance_count" {
  description = "Number of instances to launch"
  type        = number
}

variable "dynamo_table_name" {
  description = "Name of the DynamoDB table"
  type        = string
}
