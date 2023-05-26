resource "proxmox_vm_qemu" "pihole" {
  count = 1
  name = "pihole"
  target_node = var.proxmox_host

  clone = var.template_name
  agent = 1
  os_type = "cloud-init"
  cores = 1
  sockets = 1
  cpu = "host"
  memory = 1024
  scsihw = "virtio-scsi-pci"
  bootdisk = "scsi0"
  disk {
    slot = 0
    size = "4G"
    type = "scsi"
    storage = "local-lvm"
    iothread = 1
  }
  
  network {
    model = "virtio"
    bridge = "vmbr0"
  }
  
  lifecycle {
    ignore_changes = [
      network,
    ]
  }
  
  ipconfig0 = var.ipconfig_pihole
  
  sshkeys = <<EOF
  ${var.ssh_key}
  EOF
}
