/*
Add a new file called provider.tf containing a provider block for aws.
Inside this block add a single argument called region with the value ca-central-1
*/
provider "aws" {
  region = "ca-central-1"
}
