rgs = {
  att-tul03-dmrf = {
    location = "southindia"
  }
}


aks_details = {
  mrfcluster1 = {
    resource_group_name = "att-tul03-dmrf"
    location            = "southindia"
    dns_prefix          = "tul03aksdns"
    node_count          = 2
    vm_size             = "Standard_F4s_V2"
    tags = {
      Environment = "Production"
      ContCenter  = "ATT_mexico-202020"
      owner       = "ATT"
      app_id      = "TUL03"
    }
  }
}


acr_details = {
  acrtul03dmrf = {
    resource_group_name = "att-tul03-dmrf"
    location            = "southindia"
    sku                 = "Premium"
  }
}



servers_dbs = {
  "tul03dmrf" = {
    resource_group_name            = "att-tul03-dmrf"
    location                       = "southindia"
    version                        = "12.0"
    administrator_login            = "BholeNath"
    administrator_login_password   = "@BholeN@th@123"
    allow_access_to_azure_services = true
    dbs                            = ["dbstul03dmrf"]
  }
}
