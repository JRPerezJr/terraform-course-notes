/*
We have created a configuration directory /root/terraform-projects/project-shazam. The configuration file inside will be used to create an RSA type private key and then a certificate signing request or a csr using this key.

However, there is an error with the configuration.
Use the terraform validate command, troubleshoot, and fix the issue.
*/
resource "local_file" "key_data" {
        filename       = "/tmp/.pki/private_key.pem"
        content = tls_private_key.private_key.private_key_pem
        file_permission =  "0400"
}
# dsa_bits is the error and will be updated to rsa_bits
resource "tls_private_key" "private_key" {
  algorithm   = "RSA"
#   dsa_bits  = 4096
  rsa_bits = 4096
}
resource "tls_cert_request" "csr" {
  key_algorithm   = "ECDSA"
  private_key_pem = file("/tmp/.pki/private_key.pem")
  depends_on = [ local_file.key_data ]

  subject {
    common_name  = "flexit.com"
    organization = "FlexIT Consulting Services"
  }
}

/*
The error in the configuration is inside the resource block for the tls_cert_request type resource. It uses a reference expression to use the private key which is also set to be created by the same configuration file.

Inspect the values for the argument used by this resource block and fix the error.
Do not change the arguments for the resource called private_key!
*/
# solution
resource "local_file" "key_data" {
        filename       = "/tmp/.pki/private_key.pem"
        content = tls_private_key.private_key.private_key_pem
        file_permission =  "0400"
}
resource "tls_private_key" "private_key" {
  algorithm   = "RSA"
  rsa_bits  = 4096
}
resource "tls_cert_request" "csr" {
  key_algorithm   = "RSA"
  private_key_pem = file("/tmp/.pki/private_key.pem")
  depends_on = [ tls_private_key.private_key ]

  subject {
    common_name  = "flexit.com"
    organization = "FlexIT Consulting Services"
  }
}