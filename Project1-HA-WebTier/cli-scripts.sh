az group create --name HA-WebTier-RG --location centralindia
az network vnet create -g HA-WebTier-RG -n HA-VNet --address-prefix 10.0.0.0/16 \
  --subnet-name WebSubnet --subnet-prefix 10.0.1.0/24
az network vnet subnet create -g HA-WebTier-RG --vnet-name HA-VNet -n AppSubnet --address-prefix 10.0.2.0/24
az network nsg create -g HA-WebTier-RG -n WebSubnet-NSG
az network nsg rule create -g HA-WebTier-RG --nsg-name WebSubnet-NSG -n Allow-HTTP --priority 100 \
  --protocol Tcp --direction Inbound --source-address-prefix '*' --source-port-range '*' \
  --destination-port-range 80 --access Allow
az vm create -g HA-WebTier-RG -n WebVM1 --image Win2019Datacenter --vnet-name HA-VNet --subnet WebSubnet \
  --admin-username azureuser --admin-password MyP@ssw0rd123
az vm create -g HA-WebTier-RG -n WebVM2 --image Win2019Datacenter --vnet-name HA-VNet --subnet WebSubnet \
  --admin-username azureuser --admin-password MyP@ssw0rd123
az network lb create -g HA-WebTier-RG -n HA-LB --sku Basic --frontend-ip-name Frontend \
  --backend-pool-name BackendPool --public-ip-address HA-LB-PIP
az network lb probe create -g HA-WebTier-RG --lb-name HA-LB -n httpProbe --protocol tcp --port 80
az network lb rule create -g HA-WebTier-RG --lb-name HA-LB -n httpRule --protocol tcp \
  --frontend-port 80 --backend-port 80 --frontend-ip-name Frontend \
  --backend-pool-name BackendPool --probe-name httpProbe

