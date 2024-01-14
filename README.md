# Gino's Terraform Template

A Terraform IaC template for managing resources across multiple environments.

## Layout

- **environments** contains directories with each being their own full workspaces (i.e. TF states).
- **bases** contains boilerplate TF files that are common in the workspaces that cannot be placed in modules. These are symlink targets.
- **modules** contains directories with TF module definitions.

Per environment, each of the following files are not symlinked to the `base` directory:

- `backend.tf`: Backend configuration can only use static values, so you need to configure it specifically for an environment.
- `*.auto.tfvars`: This is where you write environment-specific values for your IaC.

## Module versus base

Use modules to group resources or to simplify your Terraform HCL. But for a few resources, you can simply put them in the
base directory and symlink from the environment workspaces.

Use the base directory to keep files that would otherwise be copied across environments but impossible to be
a part of a module. For example, providers configurations shouldn't be in the scope of a module, but each environment can
have multiple copies. If there will be variants, use variables to your advantage.
