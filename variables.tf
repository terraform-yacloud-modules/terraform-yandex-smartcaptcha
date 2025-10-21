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

variable "folder_id" {
  description = "ID of the folder to create a captcha in. If omitted, the provider folder is used"
  type        = string
  default     = null
}

variable "allowed_sites" {
  description = "List of allowed sites for the captcha"
  type        = list(string)
  default     = []
}

variable "style_json" {
  description = "JSON with variables to define the captcha appearance"
  type        = string
  default     = null
}

variable "turn_off_hostname_check" {
  description = "Turn off hostname check"
  type        = bool
  default     = false
}

variable "security_rule" {
  description = "List of security rules for the captcha"
  type = list(object({
    name                  = string
    priority              = number
    description           = optional(string)
    override_variant_uuid = string
    condition = optional(object({
      host = optional(object({
        hosts = list(object({
          exact_match = optional(string)
        }))
      }))
      uri = optional(object({
        path = optional(object({
          prefix_match = optional(string)
        }))
        queries = optional(list(object({
          key = string
          value = object({
            pire_regex_match     = optional(string)
            pire_regex_not_match = optional(string)
          })
        })))
      }))
      headers = optional(list(object({
        name = string
        value = object({
          pire_regex_match     = optional(string)
          pire_regex_not_match = optional(string)
        })
      })))
      source_ip = optional(object({
        ip_ranges_match = optional(object({
          ip_ranges = list(string)
        }))
        ip_ranges_not_match = optional(object({
          ip_ranges = list(string)
        }))
        geo_ip_match = optional(object({
          locations = list(string)
        }))
        geo_ip_not_match = optional(object({
          locations = list(string)
        }))
      }))
    }))
  }))
  default = []
}

variable "override_variant" {
  description = "List of override variants for security rules"
  type = list(object({
    uuid           = string
    complexity     = string
    pre_check_type = string
    challenge_type = string
    description    = optional(string)
  }))
  default = []
}
