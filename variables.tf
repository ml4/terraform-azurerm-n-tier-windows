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

variable "az_vm_name" {
  type        = string
  description = "Azure VM name"
}
