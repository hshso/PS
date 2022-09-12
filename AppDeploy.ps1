#Deploys an application across the network to a specified OU or cluster based on variables.
#Local distribution to primary system.
(Get-ADComputer -LDAPFilter "(name=Primary-PC)").name | New-Item -name{$_} -Path 'C:\Output\' -ItemType Directory
Copy-Item -Path \\SCCMServer\distribution_point\application -Destination C:\Output -Recurse

#With the below, you would have to create a local Output directory first and use the answerfile. The script does that.
#I believe it is cleaner with the second method in terms of management.
New-Item -Path C:\Output\ -ItemType Directory
(Get-ADComputer -LDAPFilter "(name=PC*)").name | New-Item -name{$_} -Path 'C:\Output\' -ItemType Directory
Get-ADComputer -Filter {Name -Like "PC*"} | Select -Expand Name | Out-File C:\Output\Resource.txt
$ResList = Get-Content "C:\Output\Resource.txt"
$SourceFile = \\SCCMServer\distribution_point\application\
$Destination = C:\CCT
foreach ($_ in $ResList) {Copy-Item $SourceFile -Destination \\$_\$Destination -PassThru -Recurse}

#Creates a shortcut on the Public Desktop.
#It works locally, but I don't know if it will work reliably over multiple OUs. The curly braces on line 25 might be excessive.
#foreach should, theoretically, allow it to do so once the directory is created by the above.
$CCTList = "C:\Output\"
$ShortcutLocation = "C:\Users\Public\Public Desktop\Output.lnk\"
$WScriptShell = New-Object -ComObject WScript.Shell
$Shortcut = $WScriptshell.CreateShortcut($ShortcutLocation)
$Shortcut.TargetPath = $CCTList
foreach ($_ in $ResList) {$Shortcut.Save()}

#This requires the permissions to be set via Set-Acl.