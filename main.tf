provider "proxmox" {
  pm_api_url      = "https://192.168.0.37:8006/api2/json"
  pm_user         = "root@pam"
  pm_password     = var.pm_password
  pm_tls_insecure = true  # Set to false if using a valid cert
}

resource "proxmox_vm_qemu" "example" {
  name        = "terraform-vm"
  target_node = var.pm_node
  clone       = var.pm_clone_name

  cores       = 2
  sockets     = 1
  memory      = 4096
  scsihw      = "virtio-scsi-pci"
  bootdisk    = "scsi0"

  disk {
    slot     = 0
    size     = "36G"
    type     = "scsi"
    storage  = "local-lvm"
    format   = "raw"
  }

  network {
    model     = "virtio"
    bridge    = "vmbr0"
  }
}
