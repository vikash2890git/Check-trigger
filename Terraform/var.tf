variable "resoure_group_name" {
  description = "Recovery vault Resource Group Name"
  type = string
}

variable "recovery_vault_name" {
  description = "recovery_vault_name"
  type = string
}

variable "Virtual_machine_resource_id" {
  description = "Virtual machine resource id"
  type = string
}

variable "backup_policy" {
  description = "backup_policy"
  type = string
  default="EnhancedPolicy"
}


