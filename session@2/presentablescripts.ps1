# How to look a wa more presentable and fancy script and use of Getreandom --powershell function 

$test_group = az group create `
        --location eastus2 `
        --name abcd  |ConvertFrom-Json

$test_sa = az storage account create `
           --resource-group $test_group.name `
           --name mani2 |ConvertFrom-Json

 $test_group
 $test_sa          

          