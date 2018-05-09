##############################################################################
# Outputs File
#
# Expose the outputs you want your users to see after a successful 
# `terraform apply` or `terraform output` command. You can add your own text 
# and include any data from the state file. Outputs are sorted alphabetically;
# use an underscore _ to move things to the bottom. In this example we're 
# providing instructions to the user on how to connect to their own custom 
# demo environment.

output "_PTFE_Server_URL" {
  value = "http://${azurerm_public_ip.ptfe-pip.fqdn}:8800"
}

output "Demo Instructions" {
  value = <<SHELLCOMMANDS

##############################################################################
# Azure Vault MySQL Database Demo Setup

# Step 1: Connect to your Azure Virtual Machine
# Linux and Mac users, open a terminal and run:
ssh ${var.admin_username}@${azurerm_public_ip.ptfe-pip.fqdn}
SHELLCOMMANDS
}
