terraform {
  backend "s3" {

    bucket = "backend-lesson2-state" #bucket name that created manually

    key    = "infrastructure" #that's how Terraform will name the state file

    region = "us-east-1"

  }

}