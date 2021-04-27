## Login
Connect-AzAccount

## Show subscription
Get-AzSubscription

## Create Resource Group
## New-AzResourceGroup -Name az-204-lab-vm-ps -Location SouthCentralUs

## Create VM
New-AzVM `
    -ResourceGroupName az-204-lab-vm-ps `
    -Name demovmps `
    -Location SouthCentralUs `
    -VirtualNetworkName "myNewVnet" `
    -SubnetName "deafult" `
    -SecurityGroupName "myNewNSG" `
    -PublicIpAddressName "mypublicip" `
    -OpenPorts 80, 3389