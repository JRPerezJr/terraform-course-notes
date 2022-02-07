/**
Now, update the main.tf file and add a new local_file resource called time with the following requirements:

    filename: /root/time.txt
    content: Time stamp of this file is <id from time_update resource>

    Use a reference expression and interpolation.

*/
resource "time_static" "time_update" {
}

resource "local_file" "time" {
  filename = "/root/time.txt"
  content = "Time stamp of this file is ${time_static.time_update.id}"
}