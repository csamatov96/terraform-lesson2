resource "aws_key_pair" "key_resource" { #
  key_name   = "Bastion_key" #
  #public_key = ""
  public_key = "${file("~/.ssh/id_rsa.pub")}" #read a file to get a value of that file 
}