resource "aws_route53_record" "devops" {
  zone_id = "Z6XWWD56QDJWX" #Route 53
  name    = "devops.csamatov.net"
  type    = "A"
  ttl     = "300"
  records = ["${aws_instance.test_ec2.public_ip}"]
}