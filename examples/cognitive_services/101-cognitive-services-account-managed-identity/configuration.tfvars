resource_groups = {
  test-rg = {
    name = "rg-alz-caf-test-1"
  }
}

managed_identities = {
  test_msi = {
    name                = "cognitive-msi"
    resource_group_key  = "test-rg"
  }
}

cognitive_services_account = {
  test_account-1 = {
    resource_group = {
      # accepts either id or key to get resource group id
      # id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourceGroup1"
      # lz_key = "examples"
      key = "test-rg"
    }
    name     = "cs-alz-caf-test-1"
    kind     = "OpenAI"
    sku_name = "S0"

    identity = {
      type   = "UserAssigned" // Possible values are SystemAssigned, UserAssigned, SystemAssigned, UserAssigned (to enable both).
      key    = ["test_msi"]
    }

    #region   = "region" // deploy the resource in a different region, ignores the rg region.
    #custom_subdomain_name = "cs-alz-caf-test-1"
    # network_acls = {
    #   default_action = "Allow"
    #   ip_rules       = ["10.10.10.0/16"]
    # }
  }
}
