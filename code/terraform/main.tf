terraform {
  backend "s3" {
    bucket = "pnieto-ghaction-terraform-state"
    key    = "terraform/state"
    region = "eu-west-1" # Change to your desired AWS region
  }
}

resource "aws_s3_bucket" "example" {
  bucket = "pnieto-terraform-example-bucket"
  tags = {
    Name        = "example-bucket"
    Environment = "dev"
  }
}