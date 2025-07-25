# Generated by GH Copilot

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "The location of the resource group"
  type        = string
  default     = "eastus2"
}

variable "tags" {
  description = "Tags for the resource group"
  type        = map(string)
  default     = {}
}
