resource "aws_instance" "ec2" {
    ami = var.ami #
    instance_type = var.instance_type #
    key_name = aws_key_pair.key_resource.key_name #full path to NAME
    security_groups = [aws_security_group.my_custom_sec_group.name] # 
    user_data = "${file("userdata.sh")}" #
    count = "1"

    tags = {
        Name = "${var.ENV}"
        Dept = "${var.Dept}"
        Created_by = "${var.Created_by}"
    }

}