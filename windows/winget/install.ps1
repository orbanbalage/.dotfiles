Get-Content winget_package_list.txt | ForEach-Object { winget install --id $_ --accept-package-agreements --accept-source-agreements }
