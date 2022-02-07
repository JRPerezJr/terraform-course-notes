Use `terraform show` and identify the attribute values.

```shell
terraform show
# local_file.time:
resource "local_file" "time" {
    content              = "Time stamp of this file is 2022-02-07T08:52:19Z"
    directory_permission = "0777"
    file_permission      = "0777"
    filename             = "/root/time.txt"
    id                   = "5c413a8507fc3a9a338dd3f21fae8b67d141238a"
}

# time_static.time_update:
resource "time_static" "time_update" {
    day     = 7
    hour    = 8
    id      = "2022-02-07T08:52:19Z"
    minute  = 52
    month   = 2
    rfc3339 = "2022-02-07T08:52:19Z"
    second  = 19
    unix    = 1644223939
    year    = 2022
}
```