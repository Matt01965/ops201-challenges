# Step 1: Create a local file called network_report.txt with the contents of ipconfig /all
ipconfig /all | Out-File -FilePath network_report.txt

# Step 2: Use Select-String to search network_report.txt and return only the IPv4 address
$ipv4Address = Get-Content network_report.txt | Select-String -Pattern 'IPv4 Address' | ForEach-Object {
    $line = $_.Line
    $ipv4 = $line -replace '\s+IPv4 Address.*:\s+([^)]+).*', '$1'
    $ipv4.Trim()
}

# Display the IPv4 address
Write-Host "IPv4 Address: $ipv4Address"
