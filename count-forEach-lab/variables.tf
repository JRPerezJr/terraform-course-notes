variable "users" {
  type = list
}
variable "content" {
  default = "password: S3cr3tP@ssw0rd"

}

# version 2
variable "users" {
    type = list(string)
    default = [ "/root/user10", "/root/user11", "/root/user12", "/root/user10"]
}
variable "content" {
    default = "password: S3cr3tP@ssw0rd"
  
}
