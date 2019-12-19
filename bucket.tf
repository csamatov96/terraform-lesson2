resource "aws_s3_bucket" "s3bucket" { #is used for Terraform 
  bucket = "terraform-lesson2" #variable can't be used
  acl    = "private"
  region = "us-east-1" 

  tags = {
    Name = "${var.ENV}"
    Dept = "${var.Dept}"
    Created_by = "${var.Created_by}"
  }
}