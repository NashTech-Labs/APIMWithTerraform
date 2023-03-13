 apim_name                 = "apim"
  apim_publisher_name       = "axpo"
  apim_publisher_email      = "saumya@knoldus.com"
  apim_sku_name             = "Developer_1"
  apim_virtual_network_type = "Internal"

  # if requires_custom_host_name_configuration is true 
  #then below custom host parameter require otherwise you can leave it blank
  requires_custom_host_name_configuration = true
  developer_portal_host_name              = "dev-portal.nonprod.contoso.com"
  management_host_name                    = "dev-management.nonprod.contoso.com"
  proxy_host_name                         = "dev-api.nonprod.contoso.com"

  wildcard_certificate_key_vault_name     = "contoso-dev-keyvault"
  wildcard_certificate_name               = "nonprod-wildcard-cert"
  wildcard_certificate_key_vault_resource_group_name = "keyvault-rg"
  
  
  apim_default_policy_path                = "./policy.xml"
  apim_user_assigned_identity = "/subscriptions/[subscriptionid]/resourceGroups/[resource_groupname]/providers/Microsoft.ManagedIdentity/userAssignedIdentities/[managemed]_usr_id"
  
  apim_logs = [
        {
        category          = "GatewayLogs"
        logs_enabled      = true
        retention_enabled = true
        days              = 90
        is_log_block      = true
        }
    ]