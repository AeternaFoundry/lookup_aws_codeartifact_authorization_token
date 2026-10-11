data "aws_codeartifact_authorization_token" "codeartifact_authorization_token_lookup" {
  for_each = var.codeartifact_authorization_token_lookup

  domain           = each.value.domain
  domain_owner     = each.value.domain_owner
  duration_seconds = each.value.duration_seconds
  region           = each.value.region
}

