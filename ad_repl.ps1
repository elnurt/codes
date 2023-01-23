# Function to get replication status 
function Get-ReplicationStatus {
    $replicationStatus = repadmin /replsummary 
    return $replicationStatus
}

# Function to get the errors and warnings 
function Get-ReplicationErrors {
    $replicationErrors = dcdiag /test:replications
    return $replicationErrors
}

# Calling the function and storing the result in a variable
$status = Get-ReplicationStatus
$errors = Get-ReplicationErrors

# Checking if there are any replication errors and printing the result
if ($errors -match "failed" -or $errors -match "warning") {
    Write-Host "Replication status: Error"
    Write-Host $errors
}
else {
    Write-Host "Replication status: Success"
    Write-Host $status
}
