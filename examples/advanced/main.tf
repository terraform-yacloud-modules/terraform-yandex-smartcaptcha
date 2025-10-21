module "smartcaptcha_advanced" {
  source = "../../"

  deletion_protection     = false
  name                    = "demo-captcha-advanced"
  complexity              = "MEDIUM"
  pre_check_type          = "CHECKBOX"
  challenge_type          = "SILHOUETTES"
  turn_off_hostname_check = false

  allowed_sites = [
    "example.com",
    "test.ru",
    "demo.example.com"
  ]

  style_json = jsonencode({
    backgroundColor = "#FFFFFF"
    textColor       = "#333333"
    buttonColor     = "#007bff"
  })

  override_variant = [
    {
      uuid           = "variant-1"
      complexity     = "EASY"
      pre_check_type = "CHECKBOX"
      challenge_type = "IMAGE_TEXT"
      description    = "Easy variant for trusted users"
    },
    {
      uuid           = "variant-2"
      complexity     = "HARD"
      pre_check_type = "SLIDER"
      challenge_type = "KALEIDOSCOPE"
      description    = "Hard variant for suspicious traffic"
    }
  ]

  security_rule = [
    {
      name                  = "block-suspicious-ip"
      priority              = 10
      description           = "Block traffic from suspicious IP ranges"
      override_variant_uuid = "variant-2"
      condition = {
        source_ip = {
          ip_ranges_match = {
            ip_ranges = ["192.168.1.0/24", "10.0.0.0/8"]
          }
        }
      }
    },
    {
      name                  = "easy-for-trusted-countries"
      priority              = 20
      description           = "Easy captcha for trusted countries"
      override_variant_uuid = "variant-1"
      condition = {
        source_ip = {
          geo_ip_match = {
            locations = ["ru", "kz", "by"]
          }
        }
      }
    }
  ]
}
