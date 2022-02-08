/*
Let's change the order in which the resource called string is recreated. 
Update the configuration so that when applied, a new random string is created first before the old one is destroyed.
*/
resource "local_file" "file" {
    filename = var.filename
    file_permission =  var.permission
    content = random_string.string.id
    
}

resource "random_string" "string" {
    length = var.length
    keepers = {
        length = var.length
    }
    lifecycle  {
        create_before_destroy = true
    }  
    
}
/*
The resource block for the file resource has been updated! 
This will force the resource to be recreated during the next apply! 
But, before that, let's also add a lifecycle rule of create_before_destroy to this resource block.
*/
resource "local_file" "file" {
  filename        = var.filename
  file_permission = var.permission
  content         = "This is a random string - ${random_string.string.id}"
  lifecycle {
    create_before_destroy = true
  }

}

resource "random_string" "string" {
  length = var.length
  keepers = {
    length = var.length
  }
  lifecycle {
    create_before_destroy = true
  }

}


/*
Now, update the configuration so that the resource super_pet is not destroyed under any circumstances with a terraform apply command
*/
resource "random_pet" "super_pet" {
    length = var.length
    prefix = var.prefix
    lifecycle {
      prevent_destroy = true
    }
}
