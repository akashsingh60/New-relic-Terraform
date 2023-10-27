resource "newrelic_alert_policy" "example-for" {
    for_each = var.for-value
    name = each.value.name
}