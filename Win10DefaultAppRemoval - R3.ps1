#Reinstall All Built-In Apps in case anything was removed manually or something corrupt or anything that will get in the way of uninstalling unwanted applications.
#Get-AppxPackage * -AllUsers| Foreach {Add-AppxPackage -DisableDevelopmentMode -Register “$($_.InstallLocation)\AppXManifest.xml”}
#Start-Sleep -Seconds 30
#Only use this if the PXE deployment does not work!

#Remove Unwanted Packages one by one with built-in delay of 15 seconds for each removal.
Get-AppxPackage *3dbuilder* -AllUsers|Remove-AppxPackage
Get-AppxProvisionedPackage -online|where {$_.PackageName -like "*3dbuilder*"}|Remove-AppxProvisionedPackage -online

Get-AppxPackage *windowscommunicationsapps* -AllUsers|Remove-AppxPackage
Get-AppxProvisionedPackage -online|where {$_.PackageName -like "*windowscommunicationsapps*"}|Remove-AppxProvisionedPackage -online

Get-AppxPackage *windowscamera* -AllUsers|Remove-AppxPackage
Get-AppxProvisionedPackage -online|where {$_.PackageName -like "*windowscamera*"}|Remove-AppxProvisionedPackage -online

Get-AppxPackage *officehub* -AllUsers|Remove-AppxPackage
Get-AppxProvisionedPackage -online|where {$_.PackageName -like "*officehub*"}|Remove-AppxProvisionedPackage -online

Get-AppxPackage *zunemusic* -AllUsers|Remove-AppxPackage
Get-AppxProvisionedPackage -online|where {$_.PackageName -like "*zunemusic*"}|Remove-AppxProvisionedPackage -online

Get-AppxPackage *windowsmaps* -AllUsers|Remove-AppxPackage
Get-AppxProvisionedPackage -online|where {$_.PackageName -like "*windowsmaps*"}|Remove-AppxProvisionedPackage -online

Get-AppxPackage *solitairecollection* -AllUsers|Remove-AppxPackage
Get-AppxProvisionedPackage -online|where {$_.PackageName -like "*solitairecollection*"}|Remove-AppxProvisionedPackage -online

Get-AppxPackage *bingfinance* -AllUsers|Remove-AppxPackage
Get-AppxProvisionedPackage -online|where {$_.PackageName -like "*bingfinance*"}|Remove-AppxProvisionedPackage -online

Get-AppxPackage *zunevideo* -AllUsers|Remove-AppxPackage
Get-AppxProvisionedPackage -online|where {$_.PackageName -like "*zunevideo*"}|Remove-AppxProvisionedPackage -online

Get-AppxPackage *bingnews* -AllUsers|Remove-AppxPackage
Get-AppxProvisionedPackage -online|where {$_.PackageName -like "*bingnews*"}|Remove-AppxProvisionedPackage -online

Get-AppxPackage *people* -AllUsers|Remove-AppxPackage
Get-AppxProvisionedPackage -online|where {$_.PackageName -like "*people*"}|Remove-AppxProvisionedPackage -online

Get-AppxPackage *windowsphone* -AllUsers|Remove-AppxPackage
Get-AppxProvisionedPackage -online|where {$_.PackageName -like "*windowsphone*"}|Remove-AppxProvisionedPackage -online

Get-AppxPackage *windowsstore* -AllUsers|Remove-AppxPackage
Get-AppxProvisionedPackage -online|where {$_.PackageName -like "*windowsstore*"}|Remove-AppxProvisionedPackage -online

Get-AppxPackage *bingsports* -AllUsers|Remove-AppxPackage
Get-AppxProvisionedPackage -online|where {$_.PackageName -like "*bingsports*"}|Remove-AppxProvisionedPackage -online

Get-AppxPackage *xboxapp* -AllUsers|Remove-AppxPackage
Get-AppxProvisionedPackage -online|where {$_.PackageName -like "*xboxapp*"}|Remove-AppxProvisionedPackage -online

Get-AppxPackage *CandyCrush* -AllUsers|Remove-AppxPackage
Get-AppxProvisionedPackage -online|where {$_.PackageName -like "*CandyCrush*"}|Remove-AppxProvisionedPackage -online

Get-AppxPackage *CommsPhone* -AllUsers|Remove-AppxPackage
Get-AppxProvisionedPackage -online|where {$_.PackageName -like "*CommsPhone*"}|Remove-AppxProvisionedPackage -online

Get-AppxPackage *Messaging* -AllUsers|Remove-AppxPackage
Get-AppxProvisionedPackage -online|where {$_.packagename -like "*Messaging*"}|Remove-AppxProvisionedPackage -online

Get-AppxPackage *Twitter* -AllUsers|Remove-AppxPackage
Get-AppxProvisionedPackage -online|where {$_.PackageName -like "*Twitter*"}|Remove-AppxProvisionedPackage -online

Get-AppxPackage *skypeapp* -AllUsers|Remove-AppxPackage
Get-AppxProvisionedPackage -online|where {$_.packagename -like "*skypeapp*"}|Remove-AppxProvisionedPackage -online

Get-AppxPackage *sway* -AllUsers|Remove-AppxPackage
Get-AppxProvisionedPackage -online|where {$_.packagename -like "*sway*"}|Remove-AppxProvisionedPackage -online

Get-AppxPackage *DesktopAppInstaller* -AllUsers|Remove-AppxPackage
Get-AppxProvisionedPackage -online|where {$_.packagename -like "*DesktopAppInstaller*"}|Remove-AppxProvisionedPackage -online

Get-AppxPackage *OneNote* -AllUsers|Remove-AppxPackage
Get-AppxProvisionedPackage -online|where {$_.packagename -like "*OneNote*"}|Remove-AppxProvisionedPackage -online

Get-AppxPackage *OneConnect* -AllUsers|Remove-AppxPackage
Get-AppxProvisionedPackage -online|where {$_.packagename -like "*OneConnect*"}|Remove-AppxProvisionedPackage -online

Get-AppxPackage *StorePurchaseApp* -AllUsers|Remove-AppxPackage
Get-AppxProvisionedPackage -online|where {$_.packagename -like "*StorePurchaseApp*"}|Remove-AppxProvisionedPackage -online

Get-AppxPackage *WindowsFeedbackHub* -AllUsers|Remove-AppxPackage
Get-AppxProvisionedPackage -online|where {$_.packagename -like "*WindowsFeedbackHub*"}|Remove-AppxProvisionedPackage -online

Get-AppxPackage *xboxIdentityProvider* -AllUsers|Remove-AppxPackage
Get-AppxProvisionedPackage -online|where {$_.packagename -like "*xboxIdentityProvider*"}|Remove-AppxProvisionedPackage -online

Get-AppxPackage *xbox* -AllUsers|Remove-AppxPackage
Get-AppxProvisionedPackage -online|where {$_.packagename -like "*GameBar*"}|Remove-AppxProvisionedPackage -online

Get-AppxPackage *xboxapp* -AllUsers|Remove-AppxPackage
Get-AppxProvisionedPackage -online|where {$_.packagename -like "*GrooveMusic*"}|Remove-AppxProvisionedPackage -online

Get-AppxPackage *CookingFever* -AllUsers|Remove-AppxPackage
Get-AppxProvisionedPackage -online|where {$_.packagename -like "*CookingFever*"}|Remove-AppxProvisionedPackage -online

Get-AppxPackage *king.com.CandyCrushSodaSaga* -AllUsers|Remove-AppxPackage
Get-AppxProvisionedPackage -online|where {$_.packagename -like "*king.com.CandyCrushSodaSaga*"}|Remove-AppxProvisionedPackage -online

Get-AppxPackage Microsoft.MixedReality.Portal -AllUsers | Remove-AppxPackage
Get-AppxProvisionedPackage -online|where {$_.packagename -like "*Microsoft.MixedReality.Portal*"}|Remove-AppxProvisionedPackage -online

Get-AppxPackage Microsoft.XboxGamingOverlay -AllUsers | Remove-AppxPackage
Get-AppxProvisionedPackage -online|where {$_.packagename -like "*Microsoft.XboxGamingOverlay*"}|Remove-AppxProvisionedPackage -online

Get-AppxPackage Microsoft.Microsoft3DViewer -AllUsers | Remove-AppxPackage
Get-AppxProvisionedPackage -online|where {$_.packagename -like "*Microsoft.Microsoft3DViewer*"}|Remove-AppxProvisionedPackage -online

Get-AppxPackage Microsoft.soundrecorder -AllUsers | Remove-AppxPackage
Get-AppxProvisionedPackage -online|where {$_.packagename -like "*Microsoft.soundrecorder*"}|Remove-AppxProvisionedPackage -online

Get-AppxPackage *Microsoft.YourPhone* -AllUsers | Remove-AppxPackage
Get-AppxProvisionedPackage -online|where {$_.packagename -like "*Microsoft.YourPhone*"}|Remove-AppxProvisionedPackage -online

Get-AppxPackage *Microsoft.GetHelp* -AllUsers | Remove-AppxPackage
Get-AppxProvisionedPackage -online|where {$_.packagename -like "*Microsoft.GetHelp*"}|Remove-AppxProvisionedPackage -online

Get-AppxPackage *LinkedIn* -AllUsers | Remove-AppxPackage
Get-AppxProvisionedPackage -online|where {$_.packagename -like "*LinkedIn*"}|Remove-AppxProvisionedPackage -online

Get-AppxPackage *translat* -AllUsers | Remove-AppxPackage
Get-AppxProvisionedPackage -online|where {$_.packagename -like "*translat*"}|Remove-AppxProvisionedPackage -online

Get-AppxPackage *Microsoft.RemoteDesktop* -AllUsers | Remove-AppxPackage
Get-AppxProvisionedPackage -online|where {$_.packagename -like "*Microsoft.RemoteDesktop*"}|Remove-AppxProvisionedPackage -online

#Get-AppxPackage -allusers | Remove-AppxPackage
#Get-AppxPackage *windowsalarms* -AllUsers| Foreach {Add-AppxPackage -DisableDevelopmentMode -Register “$($_.InstallLocation)\AppXManifest.xml”}
#Get-AppxPackage *windowscalculator* -AllUsers| Foreach {Add-AppxPackage -DisableDevelopmentMode -Register “$($_.InstallLocation)\AppXManifest.xml”}
#Get-AppxPackage *getstarted* -AllUsers| Foreach {Add-AppxPackage -DisableDevelopmentMode -Register “$($_.InstallLocation)\AppXManifest.xml”}
#Get-AppxPackage *onenote* -AllUsers| Foreach {Add-AppxPackage -DisableDevelopmentMode -Register “$($_.InstallLocation)\AppXManifest.xml”}
#Get-AppxPackage *photos* -AllUsers| Foreach {Add-AppxPackage -DisableDevelopmentMode -Register “$($_.InstallLocation)\AppXManifest.xml”}
#Get-AppxPackage *soundrecorder* -AllUsers| Foreach {Add-AppxPackage -DisableDevelopmentMode -Register “$($_.InstallLocation)\AppXManifest.xml”}
#Get-AppxPackage *bingweather* -AllUsers| Foreach {Add-AppxPackage -DisableDevelopmentMode -Register “$($_.InstallLocation)\AppXManifest.xml”}

#Other commands that should completely remove the applications
#DISM /Online /Get-ProvisionedAppxPackages|Select-String Packagename
#DISM /Online /Remove-ProvisionedAppxPackage /PackageName:<PackageName>