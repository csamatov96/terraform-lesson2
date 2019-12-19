resource "aws_route53_record" "devops" { 
  zone_id = "Z6XWWD56QDJWX" #hosted zone ID
  name    = "devops.csamatov.net"
  type    = "A"
  ttl     = "300"
  records = [aws_instance.ec2[0].public_ip]
}