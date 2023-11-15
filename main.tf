# --------- ManagementLock ------------
resource "azurerm_management_lock" "management_lock" {
    for_each = local.management_lock
        name       = each.value.name//"resource-ip"
        scope      = each.value.resource_type == "virtual_network" ? var.virtual_network_output[each.value.virtual_network_name].id : var.subnet_output["${format("%s/%s",each.value.virtual_network_name,each.value.subnet_name)}"].id//azurerm_public_ip.example.id
        lock_level = each.value.lock_level//"CanNotDelete"
        notes      = each.value.notes//"Locked because it's needed by a third-party"
}