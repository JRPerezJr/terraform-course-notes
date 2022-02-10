# Terraform state commands

- We no longer wish to manage the file located at /root/anime/hall-of-fame.txt by Terraform. Remove the resource responsible for this file completely from the management of terraform.
  
  ## Terraform remove

  `terraform state rm local_file.hall_of_fame`

  ## List out the state

  `terraform state list`

- What is the id of the random_pet resource called super_pet_2 in the state file?

##  List details

`terraform state show random_pet.super_pet_2`

- Rename the resource from super_pet_1 to ultra_pet.
  
## Rename resource

`terraform state mv random_pet.super_pet_1 random_pet.ultra_pet`

## Next pull in the new state

`terraform state pull`