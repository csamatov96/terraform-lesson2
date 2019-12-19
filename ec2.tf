resource "aws_instance" "ec2" {
    ami             = var.ami #
    instance_type   = var.instance_type #
    key_name        = aws_key_pair.key_resource.key_name #full path to NAME
    security_groups = [aws_security_group.sg.name] #name of the resource itself 
    user_data       = file("userdata.sh") #
    count           = var.count 

    tags = {
        Name = var.ENV
        Dept = var.Dept
        Created_by = var.Created_by
    }

}