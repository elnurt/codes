$port = Read-Host "Enter a port number"
$ProcessID = (Get-Process -Id (Get-NetTCPConnection -LocalPort $port).OwningProcess).Id
$service = Get-WmiObject Win32_Service -Filter "ProcessId='$ProcessID'"
$service.DisplayName
