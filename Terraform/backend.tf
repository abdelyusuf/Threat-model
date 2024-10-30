# backend tf
terraform {
  required_version = ">= 1.0.0"  
  backend "s3" {
    bucket  = "threat-model-bucket"
    key     = "state"
    region  = "eu-west-2"
    encrypt = true
  }
}