### Omstaller le controleur de domaine du lab

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
"Zone horaire"
 Get-Timezone
}

Function Set-Ethernet()
{
  "Test de l'interface ethernet"
  $IPV4 = ..\Communs\Get-IndexPV4.ps1
  Write-Output  $IPV4
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
