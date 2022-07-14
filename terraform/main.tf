module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "blumron+sandbox_01@amazon.com"
    AccountName               = "sandbox-01"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "blumron+sandbox_01@amazon.com"
    SSOUserFirstName          = "Rony"
    SSOUserLastName           = "Blum"
  }

  account_tags = {
    "ABC:Stage" = "Sandbox"
    "ABC:Owner" = "blumron@amazon.com"
    "ABC:Company" = "CallSign"
  }

  change_management_parameters = {
    change_requested_by = "Rony"
    change_reason       = "Provision Sandbox Account"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}
