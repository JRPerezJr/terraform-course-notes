variable file-content {
  type = map(string)
  default = {
      "statement1" = "Pets are cool!"
      "statement2" = "We love pets!"
  }
}

variable "pet_count" {
  default = {
   "dogs" = 3
   "cats" = 4
   "fish" = 6 
  }
  type = map(number)
}