terraform {
  backend "s3" {
    bucket         = "terraform-state-bucket-66666"
    key            = "terraform.tfstate"
    dynamodb_table = "terraform-state"
    region         = "us-east-1"
  }
}
