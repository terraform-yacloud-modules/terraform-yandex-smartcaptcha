variable "deletion_protection" {
  description = "Enable deletion protection for SmartCaptcha"
  type        = bool
  default     = true
}

variable "name" {
  description = "Name of the SmartCaptcha"
  type        = string
  default     = "demo-captcha-simple"
}

variable "complexity" {
  description = "Complexity level of the captcha"
  type        = string
  default     = "HARD"
  validation {
    condition     = contains(["EASY", "MEDIUM", "HARD", "FORCE_HARD"], var.complexity)
    error_message = "Complexity must be one of: EASY, MEDIUM, HARD, FORCE_HARD."
  }
}

variable "pre_check_type" {
  description = "Pre-check type for the captcha"
  type        = string
  default     = "SLIDER"
  validation {
    condition     = contains(["CHECKBOX", "SLIDER"], var.pre_check_type)
    error_message = "Pre-check type must be one of: CHECKBOX, SLIDER."
  }
}

variable "challenge_type" {
  description = "Challenge type for the captcha"
  type        = string
  default     = "IMAGE_TEXT"
  validation {
    condition     = contains(["IMAGE_TEXT", "SILHOUETTES", "KALEIDOSCOPE"], var.challenge_type)
    error_message = "Challenge type must be one of: IMAGE_TEXT, SILHOUETTES, KALEIDOSCOPE."
  }
}

variable "allowed_sites" {
  description = "List of allowed sites for the captcha"
  type        = list(string)
  default     = []
}


variable "timeouts" {
  description = "Timeout settings for cluster operations"
  type = object({
    create = optional(string)
    update = optional(string)
    delete = optional(string)
  })
  default = null
}
