resource "random_name" "my-name" {
  prefix = var.prefix[0]
}

resource "random_lady" "rand-name" {
  prefix = var.prefix[1]
}