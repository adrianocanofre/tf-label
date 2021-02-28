locals {
  name         = var.name == null ? null : lower(format("%s", var.name))
  environment  = var.environment == null ? null : lower(format("%s", var.environment))
  managed_by   = var.managed_by == null ? null : lower(format("%s", var.managed_by))
  owner        = var.owner == null ? null : lower(format("%s", var.owner))
  application  = var.application == null ? null : lower(format("%s", var.application))
  organization = var.organization == null ? null : lower(format("%s", var.organization))
  team         = var.team == null ? null : lower(format("%s", var.team))

  tags = merge(
    {
      "Name"         = local.name
      "environment"  = local.environment
      "managed_by"   = local.managed_by
      "owner"        = local.owner
      "application"  = local.application
      "organization" = local.organization
      "team"         = local.team
    },
    var.tags
  )
}
