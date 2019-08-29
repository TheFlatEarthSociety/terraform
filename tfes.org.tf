resource "cloudflare_zone" "tfes_org" {
	zone = "tfes.org"
	plan = "pro"
}

output "tfes_org_ns" {
	description = "tfes.org name servers"
	value       = cloudflare_zone.tfes_org.name_servers
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
