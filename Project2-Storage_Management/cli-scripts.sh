# Storage Account
az storage account create -n chiragstorage01 -g HA-WebTier-RG -l centralindia --sku Standard_LRS

# Blob Container + Upload
az storage container create --name data --account-name chiragstorage01
az storage blob upload --account-name chiragstorage01 --container-name data --name sample.txt --file ./sample.txt

# Data Protection
az storage account blob-service-properties update --account-name chiragstorage01 --enable-delete-retention true --delete-retention-days 7 --enable-versioning true

# File Share
az storage share create --name projectshare --account-name chiragstorage01
