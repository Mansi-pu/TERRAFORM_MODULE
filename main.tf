module "grafana" {
    source = "./modules/grafana"

    grafana_namespace = var.grafana_namespace
    grafana_chart = var.grafana_chart
    grafana_name = var.grafana_name
    grafana_version = var.grafana_version
    
}

resource "null_resource" "null" {
    triggers = {
      always_run = local.timestamp
    }

    provisioner "local-exec" {
      when = create
      command = "rm -f out_* && top -b -n 2 > out_${local.timestamp}.txt"
    }

    depends_on = [
      module.grafana
    ] 
}