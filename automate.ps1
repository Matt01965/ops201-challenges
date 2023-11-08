# Purpose: Automate the configuring of a new system by running this set of commands

# Enables File and Printing Sharing
Set-NetFirewallRule -DisplayGroup "File and Printer Sharing" -Enabled True

# Allow ICMP
netsh advfirewall firewall add rule name="Allow incoming ping request IPv4" dir=in action=allow protocol=icmpv4

# Enable Remote Management
Set-Service -Name "WinRM" -StartupType "Automatic"
Start-Service "WinRM"
Set-NetFirewallRule -Name "WinRM-HTTP-In-TCP" -Enabled True

# Remove Bloatware
iex ((New-Object Sytem.Net.WebClient).DownloadString('https://git.io/debloat'))

# Enable HyperV
Get-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V -All

# Lastly, disable SMBv1
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" SMB1 -Type DWORD -Value 0 -Force

