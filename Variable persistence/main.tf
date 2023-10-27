resource "newrelic_alert_policy" "test" {
  name = var.policynames
  incident_preference = " PER_POLICY "
}

