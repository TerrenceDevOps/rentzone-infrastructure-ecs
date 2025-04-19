# store the terraform state file in s3 and lock with dynamodb
terraform {
  backend "s3" {
    bucket         = "terrence-terraform-remote-state"
    key            = "terraform-module/rentzone/terraform.tfstate"
    region         = "eu-central-1"
    profile        = "terraform-user"
    dynamodb_table = "terrence-terraform-state-lock"
  }
}