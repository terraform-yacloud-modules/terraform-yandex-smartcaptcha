resource "yandex_smartcaptcha_captcha" "this" {
  deletion_protection     = var.deletion_protection
  name                    = var.name
  complexity              = var.complexity
  pre_check_type          = var.pre_check_type
  challenge_type          = var.challenge_type
  folder_id               = local.folder_id
  allowed_sites           = var.allowed_sites
  style_json              = var.style_json
  turn_off_hostname_check = var.turn_off_hostname_check

  dynamic "security_rule" {
    for_each = var.security_rule
    content {
      name                  = security_rule.value.name
      priority              = security_rule.value.priority
      description           = security_rule.value.description
      override_variant_uuid = security_rule.value.override_variant_uuid

      dynamic "condition" {
        for_each = security_rule.value.condition != null ? [security_rule.value.condition] : []
        content {
          dynamic "host" {
            for_each = condition.value.host != null ? [condition.value.host] : []
            content {
              dynamic "hosts" {
                for_each = host.value.hosts
                content {
                  exact_match = hosts.value.exact_match
                }
              }
            }
          }

          dynamic "uri" {
            for_each = condition.value.uri != null ? [condition.value.uri] : []
            content {
              dynamic "path" {
                for_each = uri.value.path != null ? [uri.value.path] : []
                content {
                  prefix_match = path.value.prefix_match
                }
              }

              dynamic "queries" {
                for_each = uri.value.queries != null ? uri.value.queries : []
                content {
                  key = queries.value.key
                  value {
                    pire_regex_match     = queries.value.value.pire_regex_match
                    pire_regex_not_match = queries.value.value.pire_regex_not_match
                  }
                }
              }
            }
          }

          dynamic "headers" {
            for_each = condition.value.headers != null ? condition.value.headers : []
            content {
              name = headers.value.name
              value {
                pire_regex_match     = headers.value.value.pire_regex_match
                pire_regex_not_match = headers.value.value.pire_regex_not_match
              }
            }
          }

          dynamic "source_ip" {
            for_each = condition.value.source_ip != null ? [condition.value.source_ip] : []
            content {
              dynamic "ip_ranges_match" {
                for_each = source_ip.value.ip_ranges_match != null ? [source_ip.value.ip_ranges_match] : []
                content {
                  ip_ranges = ip_ranges_match.value.ip_ranges
                }
              }

              dynamic "ip_ranges_not_match" {
                for_each = source_ip.value.ip_ranges_not_match != null ? [source_ip.value.ip_ranges_not_match] : []
                content {
                  ip_ranges = ip_ranges_not_match.value.ip_ranges
                }
              }

              dynamic "geo_ip_match" {
                for_each = source_ip.value.geo_ip_match != null ? [source_ip.value.geo_ip_match] : []
                content {
                  locations = geo_ip_match.value.locations
                }
              }

              dynamic "geo_ip_not_match" {
                for_each = source_ip.value.geo_ip_not_match != null ? [source_ip.value.geo_ip_not_match] : []
                content {
                  locations = geo_ip_not_match.value.locations
                }
              }
            }
          }
        }
      }
    }
  }

  dynamic "override_variant" {
    for_each = var.override_variant
    content {
      uuid           = override_variant.value.uuid
      complexity     = override_variant.value.complexity
      pre_check_type = override_variant.value.pre_check_type
      challenge_type = override_variant.value.challenge_type
      description    = override_variant.value.description
    }
  }
}
