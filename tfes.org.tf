resource "cloudflare_zone" "tfes_org" {
	zone = "tfes.org"
	plan = "pro"
}

output "tfes_org_ns" {
	description = "tfes.org name servers"
	value       = cloudflare_zone.tfes_org.name_servers
}

resource "cloudflare_record" "tfes_org_mx" {
	domain = cloudflare_zone.tfes_org.zone
	name   = "tfes.org"
	type   = "MX"
	ttl    = 900
	value  = "palpatine.tfes.org"
}
resource "cloudflare_record" "tfes_org_spf" {
	domain = cloudflare_zone.tfes_org.zone
	name   = "tfes.org"
	type   = "SPF"
	ttl    = 900
	value  = "v=spf1 ip4:173.230.144.109/32 ip6:2600:3c01::f03c:91ff:fe93:a60c/128 -all"
}
resource "cloudflare_record" "tfes_org_txt_spf" {
	domain = cloudflare_zone.tfes_org.zone
	name   = "tfes.org"
	type   = "TXT"
	ttl    = 900
	value  = "v=spf1 ip4:173.230.144.109/32 ip6:2600:3c01::f03c:91ff:fe93:a60c/128 -all"
}
resource "cloudflare_record" "x201709_domainkey_tfes_org_txt_dkim" {
	domain = cloudflare_zone.tfes_org.zone
	name   = "201709._domainkey.tfes.org"
	type   = "TXT"
	ttl    = 900
	value  = "v=DKIM1; h=sha256; k=rsa; s=email; p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA2L4uT5EP2cwQm0uyAwAUfqZ5KmATPo/5EXbhV8s2wgHh2GfH1ZR/wEzvYW3jejHQeWkzyJuyyxQ/jQcQ7dOFN+Xb5LmI5+aNvZRInkoRB9ttsQ4jvovZF12AHwdVZMDnWIBzedwQ1jP0ZSXr+IhLK1bc1+sLX3XWm8RuC1avPh6lsAC4XuJ/1jfGulUYi54mJuH6RTbOXYmEkAP1M7TLTf9MdT72jHTaVk94QVv0Qud+ORP0FqKzXwRIFURCUVukOCtWr2clCZzWpHPeqjyfWNKRRi2+t2/tGgE9YkbFZh7M405iU1pQ+KoHxvd+i7fo57E2+uCdbfAUy2APN05u8QIDAQAB"
}

module "tfes_org" {
	source  = "./palpatine"
	domain  = cloudflare_zone.tfes_org.zone
	name    = "tfes.org"
	proxied = true
}

module "assets_tfes_org" {
	source  = "./palpatine"
	domain  = cloudflare_zone.tfes_org.zone
	name    = "assets.tfes.org"
}

module "attachments_forum_pp_tfes_org" {
	source  = "./palpatine"
	domain  = cloudflare_zone.tfes_org.zone
	name    = "attachments.forum.pp.tfes.org"
}

module "attachments_forum_sjm_tfes_org" {
	source  = "./palpatine"
	domain  = cloudflare_zone.tfes_org.zone
	name    = "attachments.forum.sjm.tfes.org"
}

module "attachments_forum_tfes_org" {
	source  = "./palpatine"
	domain  = cloudflare_zone.tfes_org.zone
	name    = "attachments.forum.tfes.org"
}

module "bugs_tfes_org" {
	source  = "./palpatine"
	domain  = cloudflare_zone.tfes_org.zone
	name    = "bugs.tfes.org"
}

module "faq_tfes_org" {
	source  = "./palpatine"
	domain  = cloudflare_zone.tfes_org.zone
	name    = "faq.tfes.org"
	proxied = true
}

module "forum_blanko_tfes_org" {
	source  = "./palpatine"
	domain  = cloudflare_zone.tfes_org.zone
	name    = "forum.blanko.tfes.org"
}

module "forum_pp_tfes_org" {
	source  = "./palpatine"
	domain  = cloudflare_zone.tfes_org.zone
	name    = "forum.pp.tfes.org"
}

module "forum_sjm_tfes_org" {
	source  = "./palpatine"
	domain  = cloudflare_zone.tfes_org.zone
	name    = "forum.sjm.tfes.org"
}

module "forum_tfes_org" {
	source  = "./palpatine"
	domain  = cloudflare_zone.tfes_org.zone
	name    = "forum.tfes.org"
}

module "mathtex_tfes_org" {
	source  = "./palpatine"
	domain  = cloudflare_zone.tfes_org.zone
	name    = "mathtex.tfes.org"
	proxied = true
}

module "palpatine_tfes_org" {
	source  = "./palpatine"
	domain  = cloudflare_zone.tfes_org.zone
	name    = "palpatine.tfes.org"
	ttl     = 86400
}

module "plug_tfes_org" {
	source  = "./palpatine"
	domain  = cloudflare_zone.tfes_org.zone
	name    = "plug.tfes.org"
	proxied = true
}

module "pulg_tfes_org" {
	source  = "./palpatine"
	domain  = cloudflare_zone.tfes_org.zone
	name    = "pulg.tfes.org"
	proxied = true
}

module "webchat_tfes_org" {
	source  = "./palpatine"
	domain  = cloudflare_zone.tfes_org.zone
	name    = "webchat.tfes.org"
}

module "wiki_pp_tfes_org" {
	source  = "./palpatine"
	domain  = cloudflare_zone.tfes_org.zone
	name    = "wiki.pp.tfes.org"
}

module "wiki_tfes_org" {
	source  = "./palpatine"
	domain  = cloudflare_zone.tfes_org.zone
	name    = "wiki.tfes.org"
}

module "www_blanko_tfes_org" {
	source  = "./palpatine"
	domain  = cloudflare_zone.tfes_org.zone
	name    = "www.blanko.tfes.org"
}

module "www_pp_tfes_org" {
	source  = "./palpatine"
	domain  = cloudflare_zone.tfes_org.zone
	name    = "www.pp.tfes.org"
}

module "www_sjm_tfes_org" {
	source  = "./palpatine"
	domain  = cloudflare_zone.tfes_org.zone
	name    = "www.sjm.tfes.org"
}

module "www_tfes_org" {
	source  = "./palpatine"
	domain  = cloudflare_zone.tfes_org.zone
	name    = "www.tfes.org"
	proxied = true
}
