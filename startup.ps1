$Lab = "bash-lab"
$Region = "WestUS2"
Login-AzureRmAccount
New-AzureRmResourceGroup -Name $Lab -Location $Region
New-AzureRmResourceGroupDeployment -ResourceGroupName $Lab -Name lab-resources -TemplateFile .\infrastructure\arm-template.json