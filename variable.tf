variable "management_lock_list" {
  type = list(any)
  default = []
  description = " List of management lock objects"
}

variable "virtual_network_output" {
  type        = any
  default     = {}
  description = "list of virtual network output objects "
}

variable "subnet_output" {
  type        = map(any)
  default     = {}
  description = "subnet output"
}

variable "default_values" {
  type        = any
  default     = {}
  description = "Provide default values for resource if not any"
}