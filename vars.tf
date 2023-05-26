variable "ssh_key" {
    default = "ssh-rsa ......"
}
variable "api_url" {
    # The Proxmox Web UI address, with /api2/json added to it.
    default = "https://10.0.5.149:8006/api2/json" 
}
variable "proxmox_host" {
    # The name of the Proxmox server listed under Datacenter
    default = "proxmox" 
}
variable "template_name" {
    default = "debian-11-cloudinit-template"
}
variable "token_id" {
  default = "terraform@pam!terraform_token_id"
}
variable "token_secret" {
  default = "" # Enter your API Secret here
}
variable "ipconfig_pihole" {
  default = "ip=192.168.1.210/24,gw=192.168.1.1"
}
variable "ipconfig_homebridge" {
  default = "ip=192.168.1.211/24,gw=192.168.1.1"
}
variable "ipconfig_docker" {
  default = "ip=192.168.1.212/24,gw=192.168.1.1"
}
