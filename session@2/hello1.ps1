$test_group = az group create `
        --location eastus2 `
        --name abcd-$(Get-Random)  |ConvertFrom-Json

$test_sa = az storage account create `
           --resource-group $test_group.name `
           --name testsa$(Get-Random) |ConvertFrom-Json

 $test_group 
 $test_sa.name