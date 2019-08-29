variable "domain" {
	type = string
}
variable "name" {
	type = string
}
variable "proxied" {
	type    = bool
	default = false
}
resource "cloudflare_record" "a" {
	domain  = var.domain
	name    = var.name
	type    = "A"
	ttl     = var.proxied ? null : "900"
	value   = "173.230.144.109"
	proxied = var.proxied
}
resource "cloudflare_record" "aaaa" {
	domain  = var.domain
	name    = var.name
	type    = "AAAA"
	ttl     = var.proxied ? null : "900"
	value   = "2600:3c01::f03c:91ff:fe93:a60c"
	proxied = var.proxied
}
