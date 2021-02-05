output "token" {
  value = "${lookup(data.kubernetes_secret.krollege.data, "token")}"
}