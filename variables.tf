variable "prefix" {
  type        = string
  description = "Main prefix for all objects"
}

variable "rg_name" {
  type        = string
  description = "Resource group name"
}

variable "location" {
  type        = string
  description = "Location to deploy to"
  default     = "West Europe"
}

variable "subnet_id" {
  type        = string
  description = "ID of a single vnet subnet"
}

variable "instance_config" {
  type = object({
    vm_name                      = string
    os_publisher                 = string
    os_offer                     = string
    os_sku                       = string
    os_version                   = string
    os_disk_storage_account_type = string
    machine_size                 = string
    admin_username               = string
    admin_password               = string
  })
  default = {
    vm_name                      = "azure-winvm"
    os_publisher                 = "MicrosoftWindowsServer"
    os_offer                     = "WindowsServer"
    os_sku                       = "2016-Datacenter"
    os_version                   = "latest"
    os_disk_storage_account_type = "Standard_LRS"
    machine_size                 = "Standard_F2"
    admin_username               = "adminuser"
  }
}
