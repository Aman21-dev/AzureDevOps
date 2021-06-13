#To get VM details

$vm = (Get-AzVM -Name "AmanVm" -ResourceGroupName "myResourceGroup")


Stop-AzVM -Name $vm.Name -ResourceGroup $vm.ResourceGroupName

Start-AzVM -Name $vm.Name -ResourceGroup $vm.ResourceGroupName

Remove-AzVM -Name $vm.Name -ResourceGroup $vm.ResourceGroupName

$vm | Remove-AzNetworkInterface –Force

Get-AzDisk -ResourceGroupName $vm.ResourceGroupName -DiskName $vm.StorageProfile.OSDisk.Name | Remove-AzDisk -Force

Get-AzVirtualNetwork -ResourceGroup $vm.ResourceGroupName | Remove-AzVirtualNetwork -Force

Get-AzNetworkSecurityGroup -ResourceGroup $vm.ResourceGroupName | Remove-AzNetworkSecurityGroup -Force

Get-AzPublicIpAddress -ResourceGroup $vm.ResourceGroupName | Remove-AzPublicIpAddress -Force

Get-AzResource -ResourceGroupName $vm.ResourceGroupName | Format-Table