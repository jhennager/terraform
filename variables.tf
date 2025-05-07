variable "pm_password" {
  description = "Proxmox password"
  type        = string
  sensitive   = true
}

variable "pm_node" {
  description = "proxmox node name"
  type        = string
  sensitive   = false
  default     = "k3d-pve"
}

variable "pm_clone_name" {
  description = "proxmox template name"
  type        = string
  sensitive   = false
  default     = "ubuntu-2204-cloudinit-template"
}
