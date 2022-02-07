variable "doge" {
    type = object({
        name = string
        color = string
        age = number
        food = list(string)
        favorite_pet = bool
    })
    default = {
      age = 2
      color = "brown"
      favorite_pet = true
      food = [ "beef", "chicken", "fish" ]
      name = "Bear"
    }
}