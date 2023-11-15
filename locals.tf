locals {
  management_lock = {for management_lock in var.management_lock_list : management_lock.name => management_lock}
}