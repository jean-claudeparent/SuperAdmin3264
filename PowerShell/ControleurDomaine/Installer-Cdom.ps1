### Omstaller le controleur de domaine du lab

Function DebutInstallaation()
{
  Start-Transcript ($PSScriptRoot + "\Loginstall.txt")
  "Installer la configuration de contrôlleur de domaine pour le lab"
Import-Module -name  ($PSScriptRoot + '\..\Modules\LabSA3264.psm1') -force
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
"Zone horaire"
 Get-Timezone
}

Function Set-Ethernet()
{
  "Test de l'interface ethernet"
  $IndexIPV4 = . Get-IndexPV4
  if ($IndexIPV4 -eq -1)
  {
    throw "La carte résuau ethernet de l'ordinateur n'est pas correctement configurée, interfacealias devrait être 'Ethernet'"
  }
  else
  {
     Write-Output "Configuration réseau avant changement"
    Get-NetIPAddress -InterfaceIndex $IndexIPV4 
  }
  
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
