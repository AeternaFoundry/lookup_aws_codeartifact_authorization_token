output "codeartifact_authorization_token_lookup_id" {
  description = "Map of id values across all codeartifact_authorization_token_lookup, keyed the same as var.codeartifact_authorization_token_lookup"
  value       = { for k, v in data.aws_codeartifact_authorization_token.codeartifact_authorization_token_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "codeartifact_authorization_token_lookup_authorization_token" {
  description = "Map of authorization_token values across all codeartifact_authorization_token_lookup, keyed the same as var.codeartifact_authorization_token_lookup"
  value       = { for k, v in data.aws_codeartifact_authorization_token.codeartifact_authorization_token_lookup : k => v.authorization_token if v.authorization_token != null && length(v.authorization_token) > 0 }
  sensitive   = true
}
output "codeartifact_authorization_token_lookup_domain" {
  description = "Map of domain values across all codeartifact_authorization_token_lookup, keyed the same as var.codeartifact_authorization_token_lookup"
  value       = { for k, v in data.aws_codeartifact_authorization_token.codeartifact_authorization_token_lookup : k => v.domain if v.domain != null && length(v.domain) > 0 }
}
output "codeartifact_authorization_token_lookup_domain_owner" {
  description = "Map of domain_owner values across all codeartifact_authorization_token_lookup, keyed the same as var.codeartifact_authorization_token_lookup"
  value       = { for k, v in data.aws_codeartifact_authorization_token.codeartifact_authorization_token_lookup : k => v.domain_owner if v.domain_owner != null && length(v.domain_owner) > 0 }
}
output "codeartifact_authorization_token_lookup_duration_seconds" {
  description = "Map of duration_seconds values across all codeartifact_authorization_token_lookup, keyed the same as var.codeartifact_authorization_token_lookup"
  value       = { for k, v in data.aws_codeartifact_authorization_token.codeartifact_authorization_token_lookup : k => v.duration_seconds if v.duration_seconds != null }
}
output "codeartifact_authorization_token_lookup_expiration" {
  description = "Map of expiration values across all codeartifact_authorization_token_lookup, keyed the same as var.codeartifact_authorization_token_lookup"
  value       = { for k, v in data.aws_codeartifact_authorization_token.codeartifact_authorization_token_lookup : k => v.expiration if v.expiration != null && length(v.expiration) > 0 }
}
output "codeartifact_authorization_token_lookup_region" {
  description = "Map of region values across all codeartifact_authorization_token_lookup, keyed the same as var.codeartifact_authorization_token_lookup"
  value       = { for k, v in data.aws_codeartifact_authorization_token.codeartifact_authorization_token_lookup : k => v.region if v.region != null && length(v.region) > 0 }
}

