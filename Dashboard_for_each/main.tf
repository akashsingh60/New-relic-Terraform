resource "newrelic_one_dashboard" "Dashboards" {
  for_each = var.dashboard
  name        = var.dashboard[each.key].name
  permissions = var.dashboard[each.key].permissions

  page {
    name = var.dashboard[each.key].page.name

    widget_billboard {
      title  = var.dashboard[each.key].page.widget_billboard.title
      row    = var.dashboard[each.key].page.widget_billboard.row
      column = var.dashboard[each.key].page.widget_billboard.column
      width  = var.dashboard[each.key].page.widget_billboard.width
      height = var.dashboard[each.key].page.widget_billboard.height

      nrql_query {
        query = var.dashboard[each.key].page.widget_billboard.nrql_query.query
      }
    }

    widget_bar {
      title  = var.dashboard[each.key].page.widget_bar.title
      row    = var.dashboard[each.key].page.widget_bar.row
      column = var.dashboard[each.key].page.widget_bar.column
      width  = var.dashboard[each.key].page.widget_bar.width
      height = var.dashboard[each.key].page.widget_bar.height

      nrql_query {
        query = var.dashboard[each.key].page.widget_bar.nrql_query.query
      }
    }

    widget_line {
      title  = var.dashboard[each.key].page.widget_line.title
      row    = var.dashboard[each.key].page.widget_line.row
      column = var.dashboard[each.key].page.widget_line.column
      width  = var.dashboard[each.key].page.widget_line.width
      height = var.dashboard[each.key].page.widget_line.height

      nrql_query {
        query = var.dashboard[each.key].page.widget_line.nrql_query.query
      }
    }
  }
}