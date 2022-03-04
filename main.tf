terraform {
  required_providers {
    vultr = {
      source = "vultr/vultr"
      version = "2.9.1"
    }
  }
}

provider "vultr" {
  # In your .bashrc you need to set
  # export VULTR_API_KEY="Your Vultr API Key"
}

# Configure VM
resource "vultr_instance" "srv01" {
  region    = var.region_sydney
  os_id     = var.os_centos_9
  plan      = var.plan_one_cpu_one_gb_ram
  script_id = "e4a5ee18-d49d-4440-817b-994632729d38"
  hostname  = "srv01"
  label     = "Default"
  tag       = "terraform"
}

# Configure DNS
resource "vultr_dns_domain" "unicodetreasoncom" {
    domain = "unicodetreason.com"
    ip = "8.8.8.8"
}

resource "vultr_dns_record" "shhunicodetreasoncom" {
    domain = "${vultr_dns_domain.unicodetreasoncom.id}"
    name = "shh"
    data = vultr_instance.srv01.main_ip
    type = "A"
}