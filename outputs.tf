output "id" {
  description = "ID of the SmartCaptcha"
  value       = yandex_smartcaptcha_captcha.this.id
}

output "created_at" {
  description = "The Captcha creation timestamp"
  value       = yandex_smartcaptcha_captcha.this.created_at
}

output "client_key" {
  description = "Client key of the captcha"
  value       = yandex_smartcaptcha_captcha.this.client_key
}

output "name" {
  description = "Name of the SmartCaptcha"
  value       = yandex_smartcaptcha_captcha.this.name
}

output "description" {
  description = "Description of the captcha"
  value       = yandex_smartcaptcha_captcha.this.description
}

output "labels" {
  description = "Resource labels"
  value       = yandex_smartcaptcha_captcha.this.labels
}

output "suspend" {
  description = "Whether the captcha is in restricted mode"
  value       = yandex_smartcaptcha_captcha.this.suspend
}

output "complexity" {
  description = "Complexity level of the captcha"
  value       = yandex_smartcaptcha_captcha.this.complexity
}

output "pre_check_type" {
  description = "Pre-check type for the captcha"
  value       = yandex_smartcaptcha_captcha.this.pre_check_type
}

output "challenge_type" {
  description = "Challenge type for the captcha"
  value       = yandex_smartcaptcha_captcha.this.challenge_type
}

output "allowed_sites" {
  description = "List of allowed sites for the captcha"
  value       = yandex_smartcaptcha_captcha.this.allowed_sites
}

output "style_json" {
  description = "JSON with variables to define the captcha appearance"
  value       = yandex_smartcaptcha_captcha.this.style_json
}

output "turn_off_hostname_check" {
  description = "Whether hostname check is turned off"
  value       = yandex_smartcaptcha_captcha.this.turn_off_hostname_check
}

output "deletion_protection" {
  description = "Whether deletion protection is enabled"
  value       = yandex_smartcaptcha_captcha.this.deletion_protection
}

output "security_rules" {
  description = "List of security rules configured for the captcha"
  value       = yandex_smartcaptcha_captcha.this.security_rule
}

output "override_variants" {
  description = "List of override variants configured for the captcha"
  value       = yandex_smartcaptcha_captcha.this.override_variant
}
