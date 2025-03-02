terraform {
  backend "s3" {
    bucket = "bia-terraform-neto"
    key    = "terraform.tfstate"
    region = "us-east-1"
    profile = "default"
  }
}