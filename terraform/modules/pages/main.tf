terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 4.0"
    }
  }
}

resource "cloudflare_pages_project" "mi_pagina" {
  account_id        = var.account_id
  name              = var.project_name
  production_branch = "main"

  source {
    type = "github"
    config {
      owner                         = var.github_owner
      repo_name                     = var.github_repo
      production_branch             = "main"
      deployments_enabled           = true
      production_deployment_enabled = true
      pr_comments_enabled           = true
    }
  }

  build_config {
    build_command   = ""
    destination_dir = "/"
  }
}