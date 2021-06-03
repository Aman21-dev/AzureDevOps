Stop-AzVM -Name $vm.Name -ResourceGroup $vm.ResourceGroupName

Remove-AzVM -Name $vm.Name -ResourceGroup $vm.ResourceGroupName


Get-AzResource -ResourceGroupName $vm.ResourceGroupName | ft