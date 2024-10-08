variable "pm_api_url" {
  type = string
}

variable "cloudinit_template_name" {
  type = string
}

variable "proxmox_node" {
  type = string
}

variable "ssh_key" {
  type = string
  sensitive = true
}

terraform {
  required_providers {
    proxmox = {
      source = "telmate/proxmox"
    }
  }
}

provider "proxmox" {
  pm_api_url = var.pm_api_url
  pm_log_enable = true
  pm_log_file   = "terraform-plugin-proxmox.log"
}