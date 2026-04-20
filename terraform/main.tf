module "d1" {
  source        = "./modules/d1"
  account_id    = var.cloudflare_account_id
  database_name = var.database_name
}

module "pages" {
  source            = "./modules/pages"
  account_id        = var.cloudflare_account_id
  project_name      = var.project_name
  github_owner      = var.github_owner
  github_repo       = var.github_repo
  production_branch = "main"
  d1_databases = {
    DB = module.d1.id
  }
}