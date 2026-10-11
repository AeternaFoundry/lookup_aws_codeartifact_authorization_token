variable "codeartifact_authorization_token_lookup" {
  description = <<EOT
Map of codeartifact_authorization_token_lookup, attributes below
Required:
    - domain
Optional:
    - domain_owner
    - duration_seconds
    - region
EOT

  type = map(object({
    domain           = string
    domain_owner     = optional(string)
    duration_seconds = optional(number)
    region           = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.codeartifact_authorization_token_lookup : (
        v.duration_seconds == null || ((v.duration_seconds >= 900 && v.duration_seconds <= 43200) || (contains([0], v.duration_seconds)))
      )
    ])
    error_message = "any of: must be between 900 and 43200; must be one of: 0"
  }
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

