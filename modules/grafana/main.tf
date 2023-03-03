resource "helm_release" "grafana" {
  chart      = var.grafana_chart
  name       = var.grafana_name
  namespace  = var.grafana_namespace
  version    = var.grafana_version
  repository = "https://grafana.github.io/helm-charts"
  create_namespace = true
  wait = true
}
