resource "aws_key_pair" "Terraform_machine" { #
  key_name   = "Terraform_machine" #
  #public_key = ""
  public_key = "${file("~/.ssh/id_rsa.pub")}" #read a file to get a value of that file 
}