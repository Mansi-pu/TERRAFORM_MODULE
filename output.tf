output "grafana_release_id" {
  description = "Release name of the grafana helm chart"
  value       = module.grafana.release_id
}

output "grafana_release_status" {
  description = "Release Status of the grafana helm chart"
  value       =  module.grafana.release_status
}