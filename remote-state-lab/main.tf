/*
First, create a simple configuration to create a local_file resource within the directory called RemoteState. 
The resource block should be created inside the main.tf file. Follow the below specifications for provisioning this resource:
Resource Name: state
filename: /root/<variable local-state>
content: "This configuration uses <variable local-state> state"

Use the variable called local-state in the variables.tf file which is already created for you and make use of variable interpolation syntax ${..}. 
*/
resource "local_file" "state" {
  filename = "/root/${var.local-state}"
  content  = "This configuration uses ${var.local-state} state"
}
/*
Let's now move the state to a remote S3 backend. For this, we will make use of an S3 compatible storage called minio.

Minio provides an S3-compatible API and allows us to configure the s3 backend in the same way as the actual S3 service in AWS Cloud.
Before we add the configuration for the s3 backend, let's first change the local file resource. 
Change the variable used to remote-state instead of local-state.
*/
resource "local_file" "state" {
  filename = "/root/${var.remote-state}"
  content  = "This configuration uses ${var.remote-state} state"
}
