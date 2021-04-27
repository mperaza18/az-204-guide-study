## Login
az login

## Show subscription
az account show
az account list --output tsv

## Set a subscription
Az account set --subscription "Suscripción Prueba"


## Create Resource Group
az group create --name az-204-lab-vm-cli --location southcentralus

## Create VM
# Windows VM
az vm create \
    --resource-group az-204-lab-vm-cli \
    --name demovmcli \
    --image "win2019datacenter" \
    --admin-username adminmiguel \
    --admin-password "miguel12345@"

# Create a default Ubuntu VM with automatic SSH authentication.
az vm create \
    --resource-group az-204-lab-vm-cli \
    --name demovmcli \
    --image "UbuntuLTS" \
    # --admin-username adminmiguel \
    # --authentication-type "ssh" \