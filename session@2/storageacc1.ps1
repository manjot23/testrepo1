#cleatSynopsis
# this is a test script to create storage account# 
#first grate resource group and then storage account

$testrg = az group create --name groupsession2 --location EASTUS

#$teststorage = az storage account create --name straccmani   --resource-group groupsession2
#(to convert file from jason into simple format )

$testrg = az group create --name groupsession2 --location EASTUS |ConvertFrom-Json

#$testrg.id (shows the id (basically passing value of id to variable ))

$testrg.id
$testrg.name 

# (this is a now passing the group name  variable while creati new storage acc )
$test_sa = az storage account create --name staraccmani2 --resource-group $testrg.name |ConvertFrom-Json
$test_sa |ConvertFrom-Json
az group show --name $testrg.name # to show details of group 