resource "kubernetes_service_account" "krollege" {
  metadata {
    name = "krollege-${var.environment}"
  }
}

data "kubernetes_secret" "krollege" {
  metadata {
    name = "${kubernetes_service_account.krollege.default_secret_name}"
  }
}