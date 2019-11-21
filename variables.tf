variable tld {
    type = "string"
    description = "Top Level Domain that will be used to generate subdomains against. Requires a trailing dot."
}

variable zone {
    type = "string"
    description = "The zone to be created in the top level domain."
}

variable zone_tags {
    type = "map"
    default = {}
}