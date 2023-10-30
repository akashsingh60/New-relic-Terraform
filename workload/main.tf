resource "newrelic_workload" "workload-test" {
    for_each     = var.workload_config
    name         = each.value.name

    account_id   = 4038258
    entity_guids = each.value.entity_guids
}