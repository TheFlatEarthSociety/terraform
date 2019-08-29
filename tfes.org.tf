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

resource "cloudflare_record" "r53_tfes_org_ns1" {
	domain = cloudflare_zone.tfes_org.zone
	name   = "r53.tfes.org"
	type   = "NS"
	ttl    = 86400
	value  = "ns-2027.awsdns-61.co.uk"
}
resource "cloudflare_record" "r53_tfes_org_ns2" {
	domain = cloudflare_zone.tfes_org.zone
	name   = "r53.tfes.org"
	type   = "NS"
	ttl    = 86400
	value  = "ns-455.awsdns-56.com"
}
resource "cloudflare_record" "r53_tfes_org_ns3" {
	domain = cloudflare_zone.tfes_org.zone
	name   = "r53.tfes.org"
	type   = "NS"
	ttl    = 86400
	value  = "ns-741.awsdns-28.net"
}
resource "cloudflare_record" "r53_tfes_org_ns4" {
	domain = cloudflare_zone.tfes_org.zone
	name   = "r53.tfes.org"
	type   = "NS"
	ttl    = 86400
	value  = "ns-1384.awsdns-45.org"
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

resource "cloudflare_record" "atl1_irc_tfes_org_a" {
	domain  = cloudflare_zone.tfes_org.zone
	name    = "atl1.irc.tfes.org"
	type    = "A"
	ttl     = 86400
	value   = "144.202.16.200"
}
resource "cloudflare_record" "atl1_irc_tfes_org_aaaa" {
	domain  = cloudflare_zone.tfes_org.zone
	name    = "atl1.irc.tfes.org"
	type    = "AAAA"
	ttl     = 86400
	value   = "2001:19f0:5401:99c:5400:01ff:febf:8a9b"
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

resource "cloudflare_record" "fra1_irc_tfes_org_a" {
	domain  = cloudflare_zone.tfes_org.zone
	name    = "fra1.irc.tfes.org"
	type    = "A"
	ttl     = 86400
	value   = "199.247.19.83"
}
resource "cloudflare_record" "fra1_irc_tfes_org_aaaa" {
	domain  = cloudflare_zone.tfes_org.zone
	name    = "fra1.irc.tfes.org"
	type    = "AAAA"
	ttl     = 86400
	value   = "2001:19f0:6c01:bfb:5400:01ff:febf:8a78"
}

resource "cloudflare_record" "irc_tfes_org" {
	domain  = cloudflare_zone.tfes_org.zone
	name    = "irc.tfes.org"
	type    = "CNAME"
	ttl     = 86400
	value   = "irc.r53.tfes.org"
}

resource "cloudflare_record" "library_tfes_org" {
	domain  = cloudflare_zone.tfes_org.zone
	name    = "library.tfes.org"
	type    = "CNAME"
	ttl     = 7200
	value   = "dsb92oczl4lks.cloudfront.net"
}

resource "cloudflare_record" "lon1_irc_tfes_org_a" {
	domain  = cloudflare_zone.tfes_org.zone
	name    = "lon1.irc.tfes.org"
	type    = "A"
	ttl     = 86400
	value   = "45.77.229.82"
}
resource "cloudflare_record" "lon1_irc_tfes_org_aaaa" {
	domain  = cloudflare_zone.tfes_org.zone
	name    = "lon1.irc.tfes.org"
	type    = "AAAA"
	ttl     = 86400
	value   = "2001:19f0:7402:17ce:5400:01ff:febf:8a6a"
}

module "mathtex_tfes_org" {
	source  = "./palpatine"
	domain  = cloudflare_zone.tfes_org.zone
	name    = "mathtex.tfes.org"
	proxied = true
}

resource "cloudflare_record" "minecraft_tfes_org" {
	domain  = cloudflare_zone.tfes_org.zone
	name    = "minecraft.tfes.org"
	type    = "CNAME"
	ttl     = 86400
	value   = "anycraft.stonewall.space"
}

resource "cloudflare_record" "mon1_ewr1_tfes_org_aaaa" {
	domain  = cloudflare_zone.tfes_org.zone
	name    = "mon1.ewr1.tfes.org"
	type    = "AAAA"
	ttl     = 86400
	value   = "2001:19f0:5:5965:5400:01ff:fec3:9fb1"
}

resource "cloudflare_record" "mon1_par1_tfes_org_aaaa" {
	domain  = cloudflare_zone.tfes_org.zone
	name    = "mon1.par1.tfes.org"
	type    = "AAAA"
	ttl     = 86400
	value   = "2001:19f0:6801:1b0f:5400:01ff:fec3:9fa0"
}

resource "cloudflare_record" "mumble_tfes_org" {
	domain  = cloudflare_zone.tfes_org.zone
	name    = "mumble.tfes.org"
	type    = "CNAME"
	ttl     = 7200
	value   = "eu3.voice.enjin.com"
}

resource "cloudflare_record" "ord1_irc_tfes_org_a" {
	domain  = cloudflare_zone.tfes_org.zone
	name    = "ord1.irc.tfes.org"
	type    = "A"
	ttl     = 86400
	value   = "144.202.59.88"
}
resource "cloudflare_record" "ord1_irc_tfes_org_aaaa" {
	domain  = cloudflare_zone.tfes_org.zone
	name    = "ord1.irc.tfes.org"
	type    = "AAAA"
	ttl     = 86400
	value   = "2001:19f0:5c01:1cec:5400:01ff:febf:8a8e"
}

module "palpatine_tfes_org" {
	source  = "./palpatine"
	domain  = cloudflare_zone.tfes_org.zone
	name    = "palpatine.tfes.org"
	ttl     = 86400
}

resource "cloudflare_record" "parallax_tfes_org_a" {
	domain  = cloudflare_zone.tfes_org.zone
	name    = "parallax.tfes.org"
	type    = "A"
	ttl     = 900
	value   = "104.237.159.234"
}
resource "cloudflare_record" "parallax_tfes_org_aaaa" {
	domain  = cloudflare_zone.tfes_org.zone
	name    = "parallax.tfes.org"
	type    = "AAAA"
	ttl     = 900
	value   = "2600:3c01::f03c:91ff:fe84:6ff8"
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
