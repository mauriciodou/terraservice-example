output "pod" {
  value = kubernetes_pod.echo.metadata[0].name
}