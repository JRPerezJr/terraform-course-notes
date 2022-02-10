/*
Rename the resource from super_pet_1 to ultra_pet.

Change the name in the main.tf file as well as the state.
*/
resource "random_pet" "super_pet_1" {
    length = var.length1
    prefix = var.prefix1
}
resource "random_pet" "super_pet_2" {
    length = var.length2
    prefix = var.prefix2
}

# Updated file
resource "random_pet" "ultra_pet" {
    length = var.length1
    prefix = var.prefix1
}
resource "random_pet" "super_pet_2" {
    length = var.length2
    prefix = var.prefix2
}