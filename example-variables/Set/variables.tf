# Set can not have any duplicates
variable "prefix" {
    default = ["Mr", "Mrs", "Sir"]
    type = set(string)
}

variable "fruit" {
  default = ["apple", "banana"]
  type = set(string)
}

variable "age" {
  default = [10, 12, 13, 29]
  type = set(number)
}