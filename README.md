# terraform-azurerm-windows-vm
Terraform child module to manage creation of generic Windows VMs.

## Relevant Requirements & Prerequisites
* AWS credentials
*
<p>&nbsp;</p>

## Required Inputs
| Name | Type | Description |
| - | -- | --- |
| prefix | string | Main prefix for all objects |
| rg_name | string | Resource group name |
| subnet_id | string | ID of a single vnet subnet |
| instance_config.admin_password | string | admin_user password |
<p>&nbsp;</p>

## Optional Inputs
| Name | Type | Description | Default Value |
| - | -- | --- | - |
| location | string | Location to deploy to | West Europe |
| vm_name | string | VM name | azure-winvm |
| os_publisher | string | OS publisher | MicrosoftWindowsServer |
| os_offer | string | OS offer | WindowsServer |
| os_sku | string | OS SKU | 2016-Datacenter |
| os_version | string | OS revision to install | latest |
| os_disk_storage_account_type | string | Disk storage type | Standard_LRS |
| machine_size | string | Machine type | Standard_F2 |
| admin_username | string | Name of admin user | adminuser |
