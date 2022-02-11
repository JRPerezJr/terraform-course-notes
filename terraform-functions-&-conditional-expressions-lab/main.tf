/*
This variable contains the names of the developers for project-sonic with the names separated by a :.
Using this variable and the count meta-argument, create IAM users for all developers. Write the resource block in the main.tf file.

Convert this variable from a string to a list. Do not change the variable defined in variables.tf.
*/
resource "aws_iam_user" "cloud" {
  name  = split(":", var.cloud_users)[count.index]
  count = length(split(":", var.cloud_users))
}

/*
We have now, updated the main.tf in this configuration directory and added a new resource block to create a S3 bucket called sonic-media.
Create an additional resource called upload_sonic_media to upload the files listed in the variable called media to this bucket.

Use the following specifications:

    Use the for_each meta-argument to upload all the elements of the media variable.
    bucket: Use reference expression to the bucket sonic-media.
    source: Each element in the variable called media.
    key: Should be the name of the files being uploaded (minus the /root). For an example, eggman.jpg, shadow.jpg e.t.c.

*/
resource "aws_iam_user" "cloud" {
     name = split(":",var.cloud_users)[count.index]
     count = length(split(":",var.cloud_users))
  
}

resource "aws_s3_bucket" "sonic_media" {
  bucket = var.bucket
}

resource "aws_s3_bucket_object" "upload_sonic_media" {
  bucket = aws_s3_bucket.sonic_media.id
  key = substr(each.value, 7, 20)
  source = each.value
  for_each = var.media

}

/*
Create an EC2 Instance with the resource name mario_servers.

Use the following specifications:
AMI: Use variable called ami.

Tags: Create a tag with key Name and value set to the variable called name.

Instance_type: Use a conditional expression so that - If the instance is created with a tag Name = "tiny", it should use the variable called small else the variable called large
*/

resource "aws_instance" "mario_servers" {
  ami           = var.ami
  instance_type = var.name == "tiny" ? var.small : var.large
  tags = {
      Name = var.name
  }
}