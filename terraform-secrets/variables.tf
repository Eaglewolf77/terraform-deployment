variable "ssh_public_key" {
  description = "SSH public key to store in Key Vault"
  type        = string
}
variable "client_object_id" {
  description = "Object ID for the Service Principal"
}
