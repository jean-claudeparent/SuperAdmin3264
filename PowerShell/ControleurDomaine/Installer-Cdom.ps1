
  
Function DebutInstallaation()
{
  Start-Transcript z:\SuperAdmin3264\PowerShell\CDom.txt

  "Installer la configuration de contr�lleur de domaine pour le lab"
}

Function Set-Resolution()
{
  
  $Resolution = Get-DisplayResolution
  Write-Output  "R�solution actuelle  $Resolution"
  if ($Resolution -ne "1260x729")
  {
     "Augmenter la r�solution"
    Set-DisplayResolution 1260 720
   Get-DisplayResolution
  }
}
Function Verifie-TimeZone()
{
"Zone horaure"
Get-Timezone
}

Function Set-Ethernet()
{
"Test de l'interface ethernet0"
$IPV4 = ..\Communs\Get-IndexPV4.ps1
$IPV4
#$IPs = (Get-NETIPAddress | select-object -Property interfacealisa)
if ($IPs -contains $IPV4 )
{
  Write-Output "État actuel de la configuration"
  Get-NETIPAddress
  Set-NetIPAddress

  Get-NETIPAddress -InterfaceAlias $IPV4
}
else
{
  Tjrow "Il doit d�l� exister une connection ipv4 pour que �a marchr..."
}

Function FinInstallation()
{
  Stop-Transcript
}

###
### Execution
###

try
{
   DebutInstallaation
   Set-Resolution
   Verifie-TimeZone
   Set-Ethernet
}
catch
{
  "Erreur d'ex�cution"
  Write-Output  $PSItem

}
Finally
{
   FinInstallation
}
