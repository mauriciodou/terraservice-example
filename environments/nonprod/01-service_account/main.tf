provider "kubernetes" {
  config_path    = "~/.kube/config"
  config_context = "docker-desktop"
}

module "service_account_nonprod" {
  source = "../../../modules/service_account"

  environment = "nonprod"
}