variable "executes" {
  description = <<EOT
Map of executes, attributes below
Required:
    - execute
    - revert
Optional:
    - query
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    execute = string
    revert  = string
    query   = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
}

