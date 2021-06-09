# terraform-azurerm-windows-vm
Terraform child module to manage creation of generic Windows VMs.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.15.4 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >= 2.57.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | >= 2.57.0 |
| <a name="provider_local"></a> [local](#provider\_local) | n/a |
| <a name="provider_template"></a> [template](#provider\_template) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_linux_virtual_machine.app](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_virtual_machine) | resource |
| [azurerm_linux_virtual_machine.db](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_virtual_machine) | resource |
| [azurerm_linux_virtual_machine.web](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_virtual_machine) | resource |
| [azurerm_network_interface.app](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_interface) | resource |
| [azurerm_network_interface.db](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_interface) | resource |
| [azurerm_network_interface.web](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_interface) | resource |
| [azurerm_public_ip.app](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/public_ip) | resource |
| [azurerm_public_ip.db](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/public_ip) | resource |
| [azurerm_public_ip.web](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/public_ip) | resource |
| [azurerm_resource_group.app](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group) | resource |
| [azurerm_resource_group.db](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group) | resource |
| [azurerm_resource_group.web](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group) | resource |
| [local_file.app_startup_script](https://registry.terraform.io/providers/hashicorp/local/latest/docs/resources/file) | resource |
| [local_file.database_startup_script](https://registry.terraform.io/providers/hashicorp/local/latest/docs/resources/file) | resource |
| [local_file.web_startup_script](https://registry.terraform.io/providers/hashicorp/local/latest/docs/resources/file) | resource |
| [template_file.app_startup_script](https://registry.terraform.io/providers/hashicorp/template/latest/docs/data-sources/file) | data source |
| [template_file.database_startup_script](https://registry.terraform.io/providers/hashicorp/template/latest/docs/data-sources/file) | data source |
| [template_file.web_startup_script](https://registry.terraform.io/providers/hashicorp/template/latest/docs/data-sources/file) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_app"></a> [app](#input\_app) | set to true to include app tier | `string` | `false` | no |
| <a name="input_app_instance_config"></a> [app\_instance\_config](#input\_app\_instance\_config) | n/a | <pre>object({<br>    vm_name                      = string<br>    os_publisher                 = string<br>    os_offer                     = string<br>    os_sku                       = string<br>    os_version                   = string<br>    os_disk_storage_account_type = string<br>    machine_size                 = string<br>    admin_username               = string<br>    admin_password               = string<br>  })</pre> | <pre>{<br>  "admin_password": "",<br>  "admin_username": "rhel",<br>  "machine_size": "Standard_D2_v4",<br>  "os_disk_storage_account_type": "Standard_LRS",<br>  "os_offer": "RHEL",<br>  "os_publisher": "RedHat",<br>  "os_sku": "7_9",<br>  "os_version": "7.9.2021051701",<br>  "vm_name": "test-web"<br>}</pre> | no |
| <a name="input_app_startup_script"></a> [app\_startup\_script](#input\_app\_startup\_script) | n/a | `string` | `""` | no |
| <a name="input_common_tags"></a> [common\_tags](#input\_common\_tags) | (Optional) Map of common tags for taggable resources. | `map(string)` | `{}` | no |
| <a name="input_database"></a> [database](#input\_database) | set to true to include database tier | `string` | `false` | no |
| <a name="input_database_startup_script"></a> [database\_startup\_script](#input\_database\_startup\_script) | n/a | `string` | `""` | no |
| <a name="input_db_instance_config"></a> [db\_instance\_config](#input\_db\_instance\_config) | n/a | <pre>object({<br>    vm_name                      = string<br>    os_publisher                 = string<br>    os_offer                     = string<br>    os_sku                       = string<br>    os_version                   = string<br>    os_disk_storage_account_type = string<br>    machine_size                 = string<br>    admin_username               = string<br>    admin_password               = string<br>  })</pre> | <pre>{<br>  "admin_password": "",<br>  "admin_username": "rhel",<br>  "machine_size": "Standard_D2_v4",<br>  "os_disk_storage_account_type": "Standard_LRS",<br>  "os_offer": "RHEL",<br>  "os_publisher": "RedHat",<br>  "os_sku": "7_9",<br>  "os_version": "7.9.2021051701",<br>  "vm_name": "test-web"<br>}</pre> | no |
| <a name="input_disable_password_authentication"></a> [disable\_password\_authentication](#input\_disable\_password\_authentication) | Set password auth on or off.  Needs to be false for admin\_password to be set | `bool` | `false` | no |
| <a name="input_location"></a> [location](#input\_location) | Location to deploy to | `string` | `"West Europe"` | no |
| <a name="input_prefix"></a> [prefix](#input\_prefix) | Main prefix for all objects | `string` | n/a | yes |
| <a name="input_rg_name"></a> [rg\_name](#input\_rg\_name) | Resource group name | `string` | n/a | yes |
| <a name="input_subnet_id"></a> [subnet\_id](#input\_subnet\_id) | Subnet to deploy to | `string` | n/a | yes |
| <a name="input_web"></a> [web](#input\_web) | set to true to include web tier | `string` | `false` | no |
| <a name="input_web_instance_config"></a> [web\_instance\_config](#input\_web\_instance\_config) | // linuxvm related | <pre>object({<br>    vm_name                      = string<br>    os_publisher                 = string<br>    os_offer                     = string<br>    os_sku                       = string<br>    os_version                   = string<br>    os_disk_storage_account_type = string<br>    machine_size                 = string<br>    admin_username               = string<br>    admin_password               = string<br>  })</pre> | <pre>{<br>  "admin_password": "",<br>  "admin_username": "rhel",<br>  "machine_size": "Standard_D2_v4",<br>  "os_disk_storage_account_type": "Standard_LRS",<br>  "os_offer": "RHEL",<br>  "os_publisher": "RedHat",<br>  "os_sku": "7_9",<br>  "os_version": "7.9.2021051701",<br>  "vm_name": "test-web"<br>}</pre> | no |
| <a name="input_web_startup_script"></a> [web\_startup\_script](#input\_web\_startup\_script) | // templates | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_database_startup_script"></a> [database\_startup\_script](#output\_database\_startup\_script) | startup script when instance boots |
| <a name="output_web_startup_script"></a> [web\_startup\_script](#output\_web\_startup\_script) | startup script when instance boots |
| <a name="output_windows_app_startup_script"></a> [windows\_app\_startup\_script](#output\_windows\_app\_startup\_script) | startup script when instance boots |
| <a name="output_windowsvm-web-private_ip_address"></a> [windowsvm-web-private\_ip\_address](#output\_windowsvm-web-private\_ip\_address) | Azure windows VM: Azure windows VM Web Server private IP address |
| <a name="output_windowsvm-web-public_ip_address"></a> [windowsvm-web-public\_ip\_address](#output\_windowsvm-web-public\_ip\_address) | Azure windows VM: Azure windows VM Web Server public IP address |
<!-- END_TF_DOCS -->
