terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 4.0"
    }
  }
}

resource "cloudflare_d1_database" "this" {
  account_id = var.account_id
  name       = var.database_name
}