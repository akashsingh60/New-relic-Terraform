resource "newrelic_alert_policy" "example-1" {
    count = length(var.count-var)
    name = var.count-var[count.index].name
}