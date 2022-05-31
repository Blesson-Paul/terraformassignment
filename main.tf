provider "aws" {
  profile    = "default"
  region     = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = var.myami
  instance_type = var.myinsta
}

terraform {
backend "s3" {
bucket = "terraforms3blesson"
key = "path/to/my/key"
region = "us-east-1"
}
}