## Terraform validate example

```shell
terraform validate

Error: Unsupported argument

  on main.tf line 8, in resource "tls_private_key" "private_key":
   8:   dsa_bits  = 4096

An argument named "dsa_bits" is not expected here. Did you mean "rsa_bits"?
```
