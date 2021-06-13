Connect-AzAccount


$resourceGroup = "myResourceGroup"
$resourceGroup.id


New-AzResourceGroupDeployment  -ResourceGroupName $resourceGroup -TemplateFile C:\Users\User\Downloads\ExportedTemplate-Microsoft.Web-WebApp-Portal-2920b73b-8684\template.json  -TemplateParameterFile C:\Users\User\Downloads\ExportedTemplate-Microsoft.Web-WebApp-Portal-2920b73b-8684\parameters.json

Get-AzResourceGroup myResourceGroup