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
