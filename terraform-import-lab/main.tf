/*
Let's manage this instance called jade-mw with Terraform! First, create an empty resource block for this instance in the main.tf file in the configuration directory /root/terraform-projects/project-jade
Use jade-mw as the resource name.

We will fill in the arguments for this block later.
*/
resource "aws_instance" "ruby" {
  ami           = var.ami
  instance_type = var.instance_type
  for_each      = var.name
  key_name      = var.key_name
  tags = {
    Name = each.value
  }
}
output "instances" {
  value = aws_instance.ruby
}

resource "aws_instance" "jade-mw" {
  # tetst 
}

/*
Now, import this instance into the terraform state.

The resource name should be the same as the one used in the previous question - jade-mw
*/
# Updated resource block
resource "aws_instance" "jade-mw" {
  ami = "ami-082b3eca746b12a89"
  instance_type = "t2.large"
  key_name = "jade"
  vpc_security_group_ids = []
}

/*
Let us fix that now. Complete the resource block for jade-mw. Inspect the state to make sure all the arguments used to create this resource are defined in the resource block.

If unsure, run terraform apply after filling in the arguments and correct them until a plan shows no changes to apply.
*/
# Updated resource block
resource "aws_instance" "jade-mw" {
  ami = "ami-082b3eca746b12a89"
  instance_type = "t2.large"
  key_name = "jade"
  vpc_security_group_ids = []
  tags = {
    Name = "jade-mw"
  }
}