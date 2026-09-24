# Project 1 – Highly Available Web Tier with Load Balancer

## Portal Steps
1. Create Resource Group → Name: HA‑WebTier‑RG → Region: Central India.  
2. Create Virtual Network → Name: HA‑VNet → Subnets: WebSubnet (10.0.1.0/24), AppSubnet (10.0.2.0/24).  
3. Create NSG → Add inbound rules: Allow HTTP (80), Allow RDP (3389).  
4. Create two VMs → Windows Server 2019 → Subnet: WebSubnet.  
5. Create Load Balancer → SKU: Basic → Frontend IP: Public → Backend Pool: WebVM1 + WebVM2.  
6. Add Health Probe → TCP 80.  
7. Add Load Balancing Rule → HTTP (80).  
8. Test: Browse LB Public IP → Confirm traffic alternates between VMs.
