# Users + Groups
az ad user create --display-name WebAdmin --user-principal-name webadmin@yourtenant.onmicrosoft.com --password MyP@ssw0rd123
az ad group create --display-name WebAppAdmins --mail-nickname WebAppAdmins

# RBAC
az role assignment create --assignee WebAppAdmins --role Contributor --resource-group HA-WebTier-RG
az role assignment create --assignee webadmin@yourtenant.onmicrosoft.com --role Reader --resource-group HA-WebTier-RG

# Policy
az policy assignment create --name AllowedLocations --policy "Allowed locations" --scope /subscriptions/<sub-id>/resourceGroups/HA-WebTier-RG

# Locks + Tags
az lock create --lock-type CanNotDelete --name RG-Lock --resource-group HA-WebTier-RG
az tag create --name Environment --value Test
