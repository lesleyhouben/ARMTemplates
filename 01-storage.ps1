$rg = 'arm-introduction-01'
New-AzResourceGroup -Name $rg -Location westeurope -Force

New-AzResourceGroupDeployment `
    -Name 'new-storage' `
    -ResourceGroupName $rg `
    -TemplateFile '01-storage.json' `
    -StorageName 'armstoragetest03' `
    -storageSKU 'Standard_GRS'