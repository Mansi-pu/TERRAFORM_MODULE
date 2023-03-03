output "release_id" {
 description = "id of the grafana helm chart" 
 value = helm_release.grafana.id
}

output "release_status" {
 description = "status of the grafana helm chart" 
 value = helm_release.grafana.status
}