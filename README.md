# Yandex Cloud SmartCaptcha Terraform module

Terraform module which creates Yandex Cloud SmartCaptcha resources.

## Examples

Examples codified under
the [`examples`](https://github.com/terraform-yacloud-modules/terraform-yandex-module-template/tree/main/examples) are intended
to give users references for how to use the module(s) as well as testing/validating changes to the source code of the
module. If contributing to the project, please be sure to make any appropriate updates to the relevant examples to allow
maintainers to test your changes and to keep the examples up to date for users. Thank you!

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3 |
| <a name="requirement_yandex"></a> [yandex](#requirement\_yandex) | >= 0.72.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_yandex"></a> [yandex](#provider\_yandex) | >= 0.72.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [yandex_smartcaptcha_captcha.this](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/resources/smartcaptcha_captcha) | resource |
| [yandex_client_config.client](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/data-sources/client_config) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_allowed_sites"></a> [allowed\_sites](#input\_allowed\_sites) | List of allowed sites for the captcha | `list(string)` | `[]` | no |
| <a name="input_challenge_type"></a> [challenge\_type](#input\_challenge\_type) | Challenge type for the captcha | `string` | `"IMAGE_TEXT"` | no |
| <a name="input_complexity"></a> [complexity](#input\_complexity) | Complexity level of the captcha | `string` | `"HARD"` | no |
| <a name="input_deletion_protection"></a> [deletion\_protection](#input\_deletion\_protection) | Enable deletion protection for SmartCaptcha | `bool` | `true` | no |
| <a name="input_folder_id"></a> [folder\_id](#input\_folder\_id) | ID of the folder to create a captcha in. If omitted, the provider folder is used | `string` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of the SmartCaptcha | `string` | `"demo-captcha-simple"` | no |
| <a name="input_override_variant"></a> [override\_variant](#input\_override\_variant) | List of override variants for security rules | <pre>list(object({<br/>    uuid           = string<br/>    complexity     = string<br/>    pre_check_type = string<br/>    challenge_type = string<br/>    description    = optional(string)<br/>  }))</pre> | `[]` | no |
| <a name="input_pre_check_type"></a> [pre\_check\_type](#input\_pre\_check\_type) | Pre-check type for the captcha | `string` | `"SLIDER"` | no |
| <a name="input_security_rule"></a> [security\_rule](#input\_security\_rule) | List of security rules for the captcha | <pre>list(object({<br/>    name                  = string<br/>    priority              = number<br/>    description           = optional(string)<br/>    override_variant_uuid = string<br/>    condition = optional(object({<br/>      host = optional(object({<br/>        hosts = list(object({<br/>          exact_match = optional(string)<br/>        }))<br/>      }))<br/>      uri = optional(object({<br/>        path = optional(object({<br/>          prefix_match = optional(string)<br/>        }))<br/>        queries = optional(list(object({<br/>          key = string<br/>          value = object({<br/>            pire_regex_match     = optional(string)<br/>            pire_regex_not_match = optional(string)<br/>          })<br/>        })))<br/>      }))<br/>      headers = optional(list(object({<br/>        name = string<br/>        value = object({<br/>          pire_regex_match     = optional(string)<br/>          pire_regex_not_match = optional(string)<br/>        })<br/>      })))<br/>      source_ip = optional(object({<br/>        ip_ranges_match = optional(object({<br/>          ip_ranges = list(string)<br/>        }))<br/>        ip_ranges_not_match = optional(object({<br/>          ip_ranges = list(string)<br/>        }))<br/>        geo_ip_match = optional(object({<br/>          locations = list(string)<br/>        }))<br/>        geo_ip_not_match = optional(object({<br/>          locations = list(string)<br/>        }))<br/>      }))<br/>    }))<br/>  }))</pre> | `[]` | no |
| <a name="input_style_json"></a> [style\_json](#input\_style\_json) | JSON with variables to define the captcha appearance | `string` | `null` | no |
| <a name="input_turn_off_hostname_check"></a> [turn\_off\_hostname\_check](#input\_turn\_off\_hostname\_check) | Turn off hostname check | `bool` | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_allowed_sites"></a> [allowed\_sites](#output\_allowed\_sites) | List of allowed sites for the captcha |
| <a name="output_challenge_type"></a> [challenge\_type](#output\_challenge\_type) | Challenge type for the captcha |
| <a name="output_client_key"></a> [client\_key](#output\_client\_key) | Client key of the captcha |
| <a name="output_complexity"></a> [complexity](#output\_complexity) | Complexity level of the captcha |
| <a name="output_created_at"></a> [created\_at](#output\_created\_at) | The Captcha creation timestamp |
| <a name="output_deletion_protection"></a> [deletion\_protection](#output\_deletion\_protection) | Whether deletion protection is enabled |
| <a name="output_id"></a> [id](#output\_id) | ID of the SmartCaptcha |
| <a name="output_name"></a> [name](#output\_name) | Name of the SmartCaptcha |
| <a name="output_override_variants"></a> [override\_variants](#output\_override\_variants) | List of override variants configured for the captcha |
| <a name="output_pre_check_type"></a> [pre\_check\_type](#output\_pre\_check\_type) | Pre-check type for the captcha |
| <a name="output_security_rules"></a> [security\_rules](#output\_security\_rules) | List of security rules configured for the captcha |
| <a name="output_style_json"></a> [style\_json](#output\_style\_json) | JSON with variables to define the captcha appearance |
| <a name="output_turn_off_hostname_check"></a> [turn\_off\_hostname\_check](#output\_turn\_off\_hostname\_check) | Whether hostname check is turned off |
<!-- END_TF_DOCS -->

## License

Apache-2.0 Licensed.
See [LICENSE](https://github.com/terraform-yacloud-modules/terraform-yandex-module-template/blob/main/LICENSE).
