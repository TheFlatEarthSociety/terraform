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
