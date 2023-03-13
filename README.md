# APIM_with_terraform
we can create azure api management using this techhub.
Azure API Management offers a scalable, multi-cloud API management platform for securing, publishing, and analyzing APIs
* integrate this module with your pipeline or (need to add tfvars file if working manually)
## clone the repo and use "az login" for login your azure account

To use this module run :

```
terraform init

terraform plan

terraform apply

```
## Input

| Variable Name | Type   | Description                                                | Default Value   |
|---------------|--------|------------------------------------------------------------|-----------------|
| apim_name     | string | api management name                                        |                 |
| resource_group_name | string | api management resource_group_name                |                 |
| location       | string | api management location                                    |                 |
| sku_name       | string | api management sku                                         | Developer_1     |
| publisher_name | string | api management publisher name                              |                 |
| publisher_email | string | api management publisher email                             |                 |
| apim_user_assigned_identity | string | api management apim_user_assigned_identity       |                 |
| developer_portal_host_name | string | api management developer portal host name         |                 |
| management_host_name | string | api management management host name                   |                 |
| proxy_host_name | string | api management, proxy host name                          |                 |
| requires_custom_host_name_configuration | bool   | true if requires custom host name configuration, otherwise false (default is false) | true |
| wildcard_certificate_key_vault_name | string | keyvault name which holds a certificate to configure apim custom domain |                 |
| wildcard_certificate_key_vault_resource_group_name | string | resource_group name of keyvault which holds a certificate to configure apim custom domain |                 |
| wildcard_certificate_name | string | keyvault certificate name which will be used to configure apim custom domain |                 |
| virtual_network_type | string | api management virtual network type                       | Internal        |
| apim_subnet_id | string | api management virtual network subnet id, (requires if APIM network type is Internal) |                 |
| apim_default_policy_path | string | (optional) api management default policy path, if any policy needed to be apply |                 |
| tags          | object | api management resource tags                               | {"Data_Classification" = "Standard"} |


## Output

| Output Name         | Output Value                                             |
|---------------------|----------------------------------------------------------|
| api_management_id    | azurerm_api_management.apim.id                            |
| api_management_name  | azurerm_api_management.apim.name                          |
| apim_private_ip      | azurerm_api_management.apim.private_ip_addresses         |

