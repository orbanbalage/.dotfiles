Get-WindowsOptionalFeature -Online



# Hyper-V
Get-WindowsOptionalFeature -Online | where FeatureName -like "*Hyper*"

Get-WindowsOptionalFeature -Online -Featurename "Microsoft-Hyper-V"
Enable-WindowsOptionalFeature -Online -FeatureName "Microsoft-Hyper-V" -All


# Windows Sandbox
Get-WindowsOptionalFeature -Online | where FeatureName -like "*DisposableClientVM*"
Enable-WindowsOptionalFeature -Online -FeatureName "Containers-DisposableClientVM" -All



