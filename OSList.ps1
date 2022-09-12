#OS build retrieval.
#I'm not sure if this one works in subnets with WinRM disabled, but if it does not, the Ou/ou/dc/dc should be changed and it should?

$List = Get-ADComputer -SearchBase "Ou=Desktops,dc=Domain,dc=com" -Filter {enabled -eq $true} -Properties OperatingSystemVersion
ForEach {$System in $List} {
    $Result = switch ($System.OperatingSystemVersion)
        {
            "10.10 (17134)"}

#Actually, I am pretty sure it doesn't work yet until I can get this to automatically iterate over each specific build without putting too much load.