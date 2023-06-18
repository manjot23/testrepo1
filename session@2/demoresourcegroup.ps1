#How to query Azure CLI command output using a JMESPath query

az group create --name "dmprg"

az group list --query []   

az group list --query [].name    

az group list --query "[].{name:name}"

az group list --query "[].{name:name, location:location}"

az group list --query "[].{RGN:name, location:location}"

az group list --query "[?name=='testregroupsmp3']"

az group list --query "[?name=='testregroupsmp3'].name"

az group list  | ConvertFrom-Json

az group list  -o yaml

az group list  -o table