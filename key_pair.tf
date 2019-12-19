resource "aws_key_pair" "Terraform_machine" { #
  key_name   = "Terraform_machine" #
  #public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCrhqYxqNGQ/0vji8ZLFVBZDDguvtbiUXi4xi92OJczm1EpTEKXtWnTxHRahebkL3CkBfB+JpHt1GSSSSqCSpUJhlWK3pNURGx4qAxV7z6z+3OleUW1oJgVTcaOMUSCY4v8K2iZIO9YtXFPd5CjElxMwCLf3gChvSroiIia1MS0BmsODnB14rHrNL7SOMjaQQUDYlFA0Y2bzF+5Q96fly3l+ZOBD+KAIalNUoHCUBzuHZnNEORBe1lSZ2MoCdRbtRd6jfhNMLRjmaT4EymPhqsUW8hmFRDAvfNQpqoDmJd4g/riVVJW6AAcJLJVqaDSJptDg/hPjdRgCPvCz1rpBQB7 ec2-user@ip-172-31-16-103" #hardcoded
  public_key = "${file("~/.ssh/id_rsa.pub")}" #read a file to get a value of that file, any user can use it  
}