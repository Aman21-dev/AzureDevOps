# Import the Azure Powershell module
Import-Module -Name Az

# Connnect to an Azure account
Connect-AzAccount

# Define Azure variables for a virtual machine
$vmName = "AmanVm"
$resourceGroup = "myResourceGroup"

# Create Azure credentials
$adminCredential = Get-Credential -Message "Enter a username and password for the VM administrator."

# Create a virtual machine in azure
New-AzVM -ResourceGroupName $resourceGroup -Name $vmName -Credential $adminCredential -Image UbuntuLTS

# $vm = (Get-AzVM -Name "AmanVm" -ResourceGroupName "myResourceGroup")