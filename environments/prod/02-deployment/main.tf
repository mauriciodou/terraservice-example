data "terraform_remote_state" "service_account" {
  backend = "local"

  config = {
    path = "../01-service_account/terraform.tfstate"
  }
}

provider "kubernetes" {
  host  = "https://kubernetes.docker.internal:6443"
  token = data.terraform_remote_state.service_account.outputs.token
  insecure = true
}

module "deployment_nonprod" {
  source = "../../../modules/deployment"

  message = "Hello Krollege From PROD!"
}