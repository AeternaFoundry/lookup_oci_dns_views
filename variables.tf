variable "dns_views_lookup" {
  description = <<EOT
Map of dns_views_lookup, attributes below
Required:
    - compartment_id
Optional:
    - display_name
    - scope
    - state
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id = string
    display_name   = optional(string)
    scope          = optional(string)
    state          = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

