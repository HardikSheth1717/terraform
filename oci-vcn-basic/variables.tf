variable "region_name" {
  default     = "ap-mumbai-1"
  description = "The region of the OCI resource"
  type        = string
}

variable "profile_name" {
  default     = "learn-terraform"
  description = "OCI profile used to authenticate"
  type        = string
}

variable "oci_id" {
  default     = "ocid1.tenancy.oc1..aaaaaaaavihzvsu7c753jcygldxtcw5s7nfosydqep2ld2nxj5p3fewityya"
  description = "OCI ID"
  type        = string
}

variable "vcn_name" {
  default     = "My internal VCN"
  description = "Name of the VCN"
  type        = string
}

variable "subnet_name" {
  default     = "My subnet"
  description = "Name of the subnet"
  type        = string
}

variable "vcn_name_private" {
  default     = "semaphore_vcn"
  description = "Name of the VCN"
  type        = string
}

variable "subnet_name_private" {
  default     = "semaphore_subnet"
  description = "Name of the subnet"
  type        = string
}