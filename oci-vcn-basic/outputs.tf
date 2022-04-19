output "oci_vcn_id" {
  value       = oci_core_vcn.semaphore_vcn.id
  description = "ID of the newly created VCN"
}