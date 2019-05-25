### Define Deployment Variables

$resourceGrouplocation = 'Australia Southeast'
$resourceGroupName = 'contoso-paas'
$resourceDeploymentName = 'contoso-paas-deployment'
$templatePath = 'D:\Desktop_Files\Powershell\webapp'
$templateFile = 'contosoPaas.json'
$template = $templatePath + '\' + $templateFile


### Create Resource Group

New-AzureRmResourceGroup `
    -Name $resourceGroupName `
    -Location $resourcegrouplocation `
    -Verbose -Force


### Deploy Resources

New-AzureRmResourceGroupDeployment `
    -Name $resourceDeploymentName `
    -ResourceGroupName $resourceGroupName `
    -TemplateFile $template `
    -Verbose -Force
