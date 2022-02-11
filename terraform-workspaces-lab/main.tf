/*
For example, if on us-payroll workspace, the app_region should be us-east-1 and the ami ami-24e140119877avm OR for uk-payroll, the app_region should be eu-west-2 and the ami ami-35e140119877avm e.t.c .

Once ready, run terraform init. You don't have to create(apply) the resources yet!
Refer to the README.md file located at /root/terraform-projects/modules/payroll-app to see how to use this module.
*/
module "payroll_app" {
  source = "/root/terraform-projects/modules/payroll-app"
  # Enter the following required arguments
  app_region = lookup(var.region, terraform.workspace)
  ami        = lookup(var.ami, terraform.workspace)
}
