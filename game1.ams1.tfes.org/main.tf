variable "domain" {
	type = string
}
variable "name" {
	type = string
}
variable "ttl" {
	type    = number
	default = 900
}
resource "cloudflare_record" "a" {
	domain = var.domain
	name   = var.name
	type   = "A"
	ttl    = var.ttl
	value  = "95.179.183.4"
}
resource "cloudflare_record" "aaaa" {
	domain = var.domain
	name   = var.name
	type   = "AAAA"
	ttl    = var.ttl
	value  = "2001:19f0:5001:142b:5400:02ff:feee:6591"
}
