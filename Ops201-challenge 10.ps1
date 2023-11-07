Set-NetFirewallRule -DisplayGroup "File And Printer Sharing" -Enabled True
#Goes into the firewall rules under file and printer sharing and enables

netsh advfirewall firewall add rule name="Allow incoming ping requests IPv4" dir=in action=allow protocol=icmpv4 
#Creates a new firewall inbound rule that allows ICMP

reg add "HKLM\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 0 /f
#Edits the registry to turn fdenytsconnections to false

iex ((New-Object System.Net.WebClient).DownloadString('https://git.io/debloat'))
#Grabs the debloater from github and executes it

Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V -All
#checks windows optional features and gets the Hyper-V components and installs

Set-SmbServerConfiguration -EnableSMB1Protocol $false -Force
#Sets the SMBv1 protocol to false and forces it