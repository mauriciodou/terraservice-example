resource "kubernetes_pod" "echo" {
  metadata {
    name = "echo-example"
    labels = {
      App = "echo"
    }
  }
  spec {
    container {
      image = "hashicorp/http-echo:0.2.1"
      name  = "example"
      args  = ["-listen=:80", "-text='${var.message}'"]

      port {
        container_port = 80
      }
    }
  }
}