terraform {
  backend "s3" {
    bucket = "terraform-statefile-yamuna"
    key    = "parameters/terraform.tfstate"
    region = "us-east-1"
  }
}