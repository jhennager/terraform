variable "pm_password" {
  description = "Proxmox password"
  type        = string
  sensitive   = true
}

variable "pm_node" {
  description = "proxmox node name"
  type        = string
  sensitive   = false
}