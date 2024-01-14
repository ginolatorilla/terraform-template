# Gino's Terraform Template

A Terraform IaC template for managing resources across multiple environments.

## Layout

- **environments** contains directories with each being their own full workspaces (i.e. TF states).
- **bases** contains boilerplate TF files that are common in the workspaces that cannot be placed in modules. These are symlink targets.
- **modules** contains directories with TF module definitions.
