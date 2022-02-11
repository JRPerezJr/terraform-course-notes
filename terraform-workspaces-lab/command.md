# Commands

## Listing workspaces

`terraform workspace list`

## Selecting a workspace

`terraform workspace select <SpaceName>; terraform apply;`


## Console commands

```shell
terraform console
> terraform.workspace
default
>lookup(var.ami, terraform.workspace)
ami-oergffhHhjfjfig797d0
```