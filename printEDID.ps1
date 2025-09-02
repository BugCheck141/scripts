([array](Get-WmiObject -Namespace root\wmi -Class WmiMonitorDescriptorMethods)) |
 ForEach-Object {
		Write-Output $_.InstanceName
		for ($i = 0; $i -le 10; $i++) {  
			try {
				Write-Output (($_.WmiGetMonitorRawEEdidV1Block($i).BlockContent |  ForEach-Object { "{0:X2}" -f $_ }) -join " ")
			}
			catch {
				break
			}
		}
  }

# CIM version (for PS7)
Get-CimInstance -Namespace root\wmi -ClassName WmiMonitorDescriptorMethods |
ForEach-Object {
    Write-Output $_.InstanceName
    for ($i = 0; $i -le 10; $i++) {
        try {
            $res = Invoke-CimMethod -InputObject $_ -MethodName 'WmiGetMonitorRawEEdidV1Block' -Arguments @{ BlockId = [uint32]$i } -ErrorAction Stop
            if ($null -eq $res -or -not $res.PSObject.Properties.Match('BlockContent')) { break }
            Write-Output ( ($res.BlockContent | ForEach-Object { '{0:X2}' -f $_ }) -join ' ' )
        } catch {
            break
        }
    }
}

#Display ID
Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.Screen]::AllScreens | Format-Table
