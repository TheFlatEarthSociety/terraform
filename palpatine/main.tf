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
variable "proxied" {
	type    = bool
	default = false
}
resource "cloudflare_record" "a" {
	domain  = var.domain
	name    = var.name
	type    = "A"
	ttl     = var.proxied ? null : var.ttl
	value   = "45.77.153.149"
	proxied = var.proxied
}
resource "cloudflare_record" "aaaa" {
	domain  = var.domain
	name    = var.name
	type    = "AAAA"
	ttl     = var.proxied ? null : var.ttl
	value   = "2001:19f0:5:3bfb:5400:2ff:fe3e:4ac5"
	proxied = var.proxied
}
