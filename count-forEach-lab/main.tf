/*
Now add a count argument to create 3 instances of this resource.
*/
resource "local_file" "name" {
  filename          = "/root/user-data"
  sensitive_content = "password: S3cr3tP@ssw0rd"
  count             = 3 // added

}

/*
We have now created a variables.tf file in the same configuration directory. Update the main.tf file to make use of the list type variable defined for the filename argument.

Use count to loop through all the elements of this list and do not use hard-coded values.

Use the variable called content for the argument called sensitive_content
*/
# Updated to 
resource "local_file" "name" {
  filename          = var.users[count.index]
  sensitive_content = var.content
  count             = length(var.users)


}

/*
Let's do the same exercise as before but this time we will make use of the for_each meta argument to create the files in this configuration.

Just like before don't use any hard-coded values.
Use for_each to loop through the list type variable called users.
Use the variable called content as the value of the argument sensitive_content.
*/
resource "local_file" "name" {
    filename = each.value
    for_each = toset(var.users)
    sensitive_content = var.content
  
}

