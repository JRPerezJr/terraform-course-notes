# Tuples may use mixed types. Must math the tuple types
variable kitty {
    type = tuple([string, number, bool])
    default = [ "cat", 2, true ]
    # this will fail with error
    # default = [ "cat", 2, true, "dog" ]
}