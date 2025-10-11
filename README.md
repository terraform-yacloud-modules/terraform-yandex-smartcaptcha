# Yandex Cloud <RESOURCE> Terraform module

Terraform module which creates Yandex Cloud <RESOURCE> resources.

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

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_allowed_sites"></a> [allowed\_sites](#input\_allowed\_sites) | List of allowed sites for the captcha | `list(string)` | `[]` | no |
| <a name="input_challenge_type"></a> [challenge\_type](#input\_challenge\_type) | Challenge type for the captcha | `string` | `"IMAGE_TEXT"` | no |
| <a name="input_complexity"></a> [complexity](#input\_complexity) | Complexity level of the captcha | `string` | `"HARD"` | no |
| <a name="input_deletion_protection"></a> [deletion\_protection](#input\_deletion\_protection) | Enable deletion protection for SmartCaptcha | `bool` | `true` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of the SmartCaptcha | `string` | `"demo-captcha-simple"` | no |
| <a name="input_pre_check_type"></a> [pre\_check\_type](#input\_pre\_check\_type) | Pre-check type for the captcha | `string` | `"SLIDER"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->

## License

Apache-2.0 Licensed.
See [LICENSE](https://github.com/terraform-yacloud-modules/terraform-yandex-module-template/blob/main/LICENSE).
