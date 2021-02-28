locals {
  name         = lower(format("%s", var.name)) : ""
  environment  = lower(format("%s", var.environment)) : ""
  managed_by   = lower(format("%s", var.managed_by)) : ""
  owner        = lower(format("%s", var.owner)) : ""
  application  = lower(format("%s", var.appication)) : ""
  organization = lower(format("%s", var.organization)) : ""
  team         = lower(format("%s", var.team)) : ""

  tags = merge(
    {
      "Name"         = local.name
      "environment"  = local.environment
      "managed_by"   = local.managedby
      "owner"        = local.owner
      "application"  = local.application
      "organization" = local.organization
      "team"         = local.team
    },
    var.tags
  )
}
