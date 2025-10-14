resource "yandex_smartcaptcha_captcha" "this" {
  deletion_protection = var.deletion_protection
  name                = var.name
  complexity          = var.complexity
  pre_check_type      = var.pre_check_type
  challenge_type      = var.challenge_type
  allowed_sites       = var.allowed_sites

  dynamic "timeouts" {
    for_each = var.timeouts == null ? [] : [var.timeouts]
    content {
      create = try(timeouts.value.create, null)
      update = try(timeouts.value.update, null)
      delete = try(timeouts.value.delete, null)
    }
  }

}
