output "captcha_id" {
  description = "ID of the created SmartCaptcha"
  value       = module.smartcaptcha_advanced.id
}

output "client_key" {
  description = "Client key of the SmartCaptcha"
  value       = module.smartcaptcha_advanced.client_key
}

output "created_at" {
  description = "Creation timestamp of the SmartCaptcha"
  value       = module.smartcaptcha_advanced.created_at
}

output "name" {
  description = "Name of the SmartCaptcha"
  value       = module.smartcaptcha_advanced.name
}

output "complexity" {
  description = "Complexity level of the SmartCaptcha"
  value       = module.smartcaptcha_advanced.complexity
}

output "security_rules" {
  description = "Security rules configured for the SmartCaptcha"
  value       = module.smartcaptcha_advanced.security_rules
}

output "override_variants" {
  description = "Override variants configured for the SmartCaptcha"
  value       = module.smartcaptcha_advanced.override_variants
}
