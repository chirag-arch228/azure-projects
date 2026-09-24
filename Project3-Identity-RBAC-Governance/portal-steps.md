# Project 3: Azure Identity, RBAC & Governance

## Portal Steps
1. Create Users → webadmin@... , auditor@...
2. Create Group → WebAppAdmins.
3. Assign RBAC Roles → Contributor to WebAppAdmins, Reader to auditor.
4. Assign Policy → Allowed Locations → Scope: HA-WebTier-RG.
5. Add Resource Lock → Type: Delete → Name: RG-Lock.
6. Add Tags → Environment=Test, Owner=Chirag.
