provider "azurerm" {
  features {}
}


data "azurerm_backup_policy_vm" "existing_backup_policy" {
  name                = var.backup_policy
  resource_group_name = var.resoure_group_name
  recovery_vault_name = var.recovery_vault_name
}


output "databackuppolicy" {
  value = data.azurerm_backup_policy_vm.existing_backup_policy.id
}


resource "azurerm_backup_protected_vm" "backup-protect" {
  resource_group_name = var.resoure_group_name
  recovery_vault_name = var.recovery_vault_name
  source_vm_id        = var.Virtual_machine_resource_id
  backup_policy_id    = data.azurerm_backup_policy_vm.existing_backup_policy.id
}

