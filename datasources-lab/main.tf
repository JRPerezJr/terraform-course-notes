/*
A new configuration directory has been created at /root/terraform-projects/project-lexcorp. A data source block is defined in the main.tf file to read the contents of an existing file.
There is also an output variable that uses reference expression to print the file content using this data source. However, there is something wrong!

Troubleshoot and fix the issue.
*/
output "os-version" {
  value = data.local_file.os.content
}
# datasource "local_file" "os" {
#   filename = "/etc/os-release"
# }
# Updated to 
output "os-version" {
  value = data.local_file.os.content
}
data "local_file" "os" {
  filename = "/etc/os-release"
}
