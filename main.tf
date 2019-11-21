data aws_route53_zone "tld" {
  name         = var.tld
}

resource aws_route53_zone "demo" {
  name = "${var.zone}"

  tags = var.zone_tags
}

resource aws_route53_record "this-ns" {
  zone_id = data.aws_route53_zone.tld.zone_id
  name    = var.domain
  type    = "NS"
  ttl     = "30"

  records = [
    aws_route53_zone.demo.name_servers.0,
    aws_route53_zone.demo.name_servers.1,
    aws_route53_zone.demo.name_servers.2,
    aws_route53_zone.demo.name_servers.3,
  ]
}
