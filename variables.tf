//// common variables
//
variable "web" {
  type        = string
  description = "set to true to include web tier"
  default     = false
}

variable "app" {
  type        = string
  description = "set to true to include app tier"
  default     = false
}

variable "database" {
  type        = string
  description = "set to true to include database tier"
  default     = false
}

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
  description = "Subnet to deploy to"
}

variable "common_tags" {
  type        = map(string)
  description = "(Optional) Map of common tags for taggable resources."
  default     = {}
}

//// templates
//
variable "web_startup_script" {
  default = ""
}

variable "app_startup_script" {
  default = ""
}

variable "database_startup_script" {
  default = ""
}

//// linuxvm related
//
variable "web_instance_config" {
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
    vm_name                      = "test-web"
    machine_size                 = "Standard_D2_v4"
    os_publisher                 = "MicrosoftWindowsServer"
    os_offer                     = "WindowsServer"
    os_sku                       = "2019-Datacenter"
    os_version                   = "2019.0.20190410"
    os_disk_storage_account_type = "Standard_LRS"
    admin_username               = "admin"
    admin_password               = "donotusethispassword"
  }
}

variable "app_instance_config" {
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
    vm_name                      = "test-web"
    machine_size                 = "Standard_D2_v4"
    os_publisher                 = "MicrosoftWindowsServer"
    os_offer                     = "WindowsServer"
    os_sku                       = "2019-Datacenter"
    os_version                   = "2019.0.20190410"
    os_disk_storage_account_type = "Standard_LRS"
    admin_username               = "admin"
    admin_password               = "donotusethispassword"
  }
}

variable "db_instance_config" {
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
    vm_name                      = "test-web"
    machine_size                 = "Standard_D2_v4"
    os_publisher                 = "MicrosoftWindowsServer"
    os_offer                     = "WindowsServer"
    os_sku                       = "2019-Datacenter"
    os_version                   = "2019.0.20190410"
    os_disk_storage_account_type = "Standard_LRS"
    admin_username               = "admin"
    admin_password               = "donotusethispassword"
  }
}

variable "disable_password_authentication" {
  type        = bool
  description = "Set password auth on or off.  Needs to be false for admin_password to be set"
  default     = false
}

