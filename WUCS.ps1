#Run WUATS and shut down/restart the local system in one shot without the need for an answerfile.
#The script needs to be run locally if WinRM is disabled across the network. Remote invocation will not be possible in that case.
#By Samuel Ho, 27 April, 2020.

Get-Service -Name "CryptSvc" | Stop-Service
Get-Service -Name "CcmExec" | Stop-Service

Get-Service -Name "CryptSvc" | Start-Service
Get-Service -Name "CcmExec" | Start-Service

Get-TroubleshootingPack -Path C:\Windows\Diagnostics\system\WindowsUpdate | Invoke-TroubleshootingPack