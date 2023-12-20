# Log in to az
az login
az account list -o table

# Variables 
loc=centralus
rg=tk-nosql-rg
cosmosName=tk-test2-cosmos

# Create rg
az group create -n $rg -l $loc   


# Create database account 
az cosmosdb create -n $cosmosName -g $rg

# Get Primary Key
az cosmosdb keys list -n $cosmosName -g $rg

# Setup console app (in ConsoleApp)
dotnet build
dotnet run

#######################################
# Clean up resources
az group delete -n $rg -y --no-wait

# Reference
https://learn.microsoft.com/en-us/training/modules/work-with-cosmos-db/3-exercise-work-cosmos-db-dotnet