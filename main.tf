data "oci_dns_views" "dns_views_lookup" {
  for_each = var.dns_views_lookup

  compartment_id = each.value.compartment_id
  display_name   = each.value.display_name
  scope          = each.value.scope
  state          = each.value.state

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

