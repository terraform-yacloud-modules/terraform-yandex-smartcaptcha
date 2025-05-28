resource "yandex_smartcaptcha_captcha" "this" {
  deletion_protection = var.deletion_protection
  name                = var.name
  complexity          = var.complexity
  pre_check_type      = var.pre_check_type
  challenge_type      = var.challenge_type
  allowed_sites       = var.allowed_sites
}
