provider "oci" {
  region              = var.region_name
  auth                = "SecurityToken"
  config_file_profile = var.profile_name
}

resource "oci_core_vcn" "semaphore_vcn" {
  dns_label      = "internal"
  cidr_block     = "172.16.0.0/20"
  compartment_id = var.oci_id
  display_name   = var.vcn_name
}

resource "oci_core_subnet" "semaphore_vcn_subnet" {
  vcn_id                     = oci_core_vcn.semaphore_vcn.id
  cidr_block                 = "172.16.0.0/24"
  compartment_id             = var.oci_id
  display_name               = var.subnet_name
  prohibit_public_ip_on_vnic = true
  dns_label                  = "dev"
}