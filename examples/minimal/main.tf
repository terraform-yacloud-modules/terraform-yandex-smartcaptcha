module "smartcaptcha" {
  source = "../../"

  deletion_protection = false
  name               = "demo-captcha-simple"
  complexity         = "HARD"
  pre_check_type     = "SLIDER"
  challenge_type     = "IMAGE_TEXT"
  allowed_sites      = [
    "example.com",
    "example.ru"
  ]
}
