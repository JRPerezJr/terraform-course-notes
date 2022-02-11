# Commands

## Convert this variable from a string to a list.

```json
variable "cloud_users" {
     type = string
     default = "andrew:ken:faraz:mutsumi:peter:steve:braja"
}
```

`terraform console`
`split(":", var.cloud_users)`

## Locate the index of the element called oni in the variable called sf

`terraform console`
`index(var.sf, "oni")`
