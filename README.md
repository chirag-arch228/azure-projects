# Azure Projects Portfolio

This repository showcases three hands‑on Azure administration projects aligned with **AZ‑104 certification labs**. Each project includes portal steps, CLI scripts, outputs, and screenshots embedded directly in `outputs.md`.

---

## 📂 Projects

### [Project 1 – Highly Available Web Tier](./Project1-HA-WebTier)
- Deploy VNet, subnets, NSGs, and two VMs.
- Configure an Azure Load Balancer with health probes and rules.
- Validate high availability via the LB public IP.
- **See outputs + screenshot:** [outputs.md](./Project1-HA-WebTier/outputs.md)

---

### [Project 2 – Storage Management & Data Protection](./Project2-Storage-Management)
- Create a storage account and blob container.
- Upload sample data, enable soft delete + versioning.
- Configure lifecycle management and Azure Files.
- **See outputs + screenshot:** [outputs.md](./Project2-Storage-Management/outputs.md)

---

### [Project 3 – Identity, RBAC & Governance](./Project3-Identity-RBAC-Governance)
- Create Entra ID users and groups.
- Assign RBAC roles at resource group scope.
- Apply governance with Azure Policy, resource locks, and tags.
- **See outputs + screenshot:** [outputs.md](./Project3-Identity-RBAC-Governance/outputs.md)

---

## ⚙️ Prerequisites
- Azure subscription (Free or Pay‑As‑You‑Go).
- Azure CLI installed (`az --version`).
- Git installed (`git --version`).
- Basic familiarity with Azure portal navigation.

---

## 🚀 Usage
1. Clone the repo:
   ```bash
   git clone https://github.com/chirag-arch228/azure-projects.git
   cd azure-projects
   
2. Navigate to a project folder:

```bash
cd Project1-HA-WebTier
```

3. Follow portal-steps.md for manual setup or run commands from cli-scripts.sh.

4. Review outputs.md for expected results and embedded screenshots.

🎯 Learning Outcomes
Deploy and manage highly available compute resources.

Configure and protect Azure storage.

Implement identity, RBAC, and governance controls.

Practice real‑world AZ‑104 lab scenarios.

👤 Author
Chirag N  
Entry‑level Azure Administrator / Cloud Support trainee
Location: Bengaluru, Karnataka
GitHub: chirag-arch228 (github.com)
