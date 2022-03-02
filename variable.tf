variable "region_sydney" {
  description = "Vultr Sydney Region"
  default = "syd"
}

variable "plan_one_cpu_one_gb_ram" {
  description = "1CPU,1 GB RAM,25 GB SSD,1.00 TB BW"
  default = "vc2-1c-1gb"
}

variable "plan_one_cpu_two_gb_ram" {
  description = "1CPU,2 GB RAM,25 GB SSD,1.00 TB BW"
  default = "vc2-1c-2gb"
}

variable "os_centos_9" {
  description = "CentOS 9 Stream x64"
  default = 542
}