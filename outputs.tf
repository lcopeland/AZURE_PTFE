##############################################################################
# Outputs File
#
# Expose the outputs you want your users to see after a successful 
# `terraform apply` or `terraform output` command. You can add your own text 
# and include any data from the state file. Outputs are sorted alphabetically;
# use an underscore _ to move things to the bottom. In this example we're 
# providing instructions to the user on how to connect to their own custom 
# demo environment.

output "next_steps" {
  value = <<SHELLCOMMANDS

##############################################################################
# Azure PTFE install
# Continue the PTFE install from:
http://${azurerm_public_ip.ptfe-pip.fqdn}:8800
SHELLCOMMANDS
}
