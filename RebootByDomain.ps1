## **Instructions**
#    1. Must be run as administrator
#    2. The computer this is run from must be moved out of OU listed to be rebooted
#    3. Comment out the section of lines for any OU you do not want the reboot applied to

#Import AD commandlets
Import-Module ActiveDirectory

#Retrieve computers from OU and initiate reboot
$TSTDomain = Get-ADComputer  -SearchBase 'OU=Desktops,DC=Domain,DC=com' -Filter * 
ForEach ($w in $TSTDomain)
	{
		Restart-Computer -ComputerName $w.name -Force -Verbose
	}

$RMDomain = Get-ADComputer  -SearchBase 'OU=RM_Desktops,DC=Domain,DC=com' -Filter * 
ForEach ($s in $RMDomain)
	{
		Restart-Computer -ComputerName $s.name -Force -Verbose
	}

$Domain3 = Get-ADComputer  -SearchBase 'OU=Domain3_Desktops,DC=Domain,DC=com' -Filter * 
ForEach ($h in $Domain3)
	{
		Restart-Computer -ComputerName $h.name -Force -Verbose
	}