provider "cloudflare" {
	version = "1.18.1"
	email = var.cloudflare_email
	token = var.cloudflare_token
}
