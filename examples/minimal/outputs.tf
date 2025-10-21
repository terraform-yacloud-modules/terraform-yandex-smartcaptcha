output "captcha_id" {
  description = "ID of the created SmartCaptcha"
  value       = module.smartcaptcha.id
}

output "client_key" {
  description = "Client key of the SmartCaptcha"
  value       = module.smartcaptcha.client_key
}

output "created_at" {
  description = "Creation timestamp of the SmartCaptcha"
  value       = module.smartcaptcha.created_at
}

output "name" {
  description = "Name of the SmartCaptcha"
  value       = module.smartcaptcha.name
}
