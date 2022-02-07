/*
In the configuration directory /root/terraform-projects/key-generator, create a file called key.tf with the following specifications:

Resource Type: tls_private_key
Resource Name: pvtkey
algorithm: RSA
rsa_bits: 4096

When ready, run terraform init, plan and apply.
If unsure, refer to the documentation.
*/
resource "tls_private_key" "pvtkey" {
  algorithm = "RSA"
  rsa_bits = 4096
}

/*
Now, let's use the private key created by this resource in another resource of type local file. Update the key.tf file with the requirements:

Resource Name: key_details

File Name: /root/key.txt
Content: use a reference expression to use the attribute called private_key_pem of the pvtkey resource
*/
resource "local_file" "key_details" {
    filename = "/root/key.txt"
    content = "${tls_private_key.pvtkey.private_key_pem}"
}