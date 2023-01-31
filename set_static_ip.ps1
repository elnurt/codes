get-netadapter


$index = Read-Host "Enter ifIndex numeric number  of the interface to assign static IP"  
$IpAdress = Read-Host  "Enter new IP"  
$DG = Read-Host " Enter Gateway"  
$subnet = Read-Host "Subnet in a bit format"  
$DNS = Read-Host " DNS"  

 



New-NetIPAddress –IPAddress $IpAdress -DefaultGateway $DG -PrefixLength $subnet -InterfaceIndex $index
Set-DNSClientServerAddress –InterfaceIndex $index  –ServerAddresses $DNS