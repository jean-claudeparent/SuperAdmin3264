
  
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
$IPs = (Get-NETIPAddress | select-object -Property interfacealisa)
if ($IPs -contains "ethernet0")
{
  "Caract�ristique de l'interface"
  Get-NETIPAddress -InterfaceAlias "efhernet0"
}
else
{
  New-NetIPAddress -InterfaceAlias "efhernet0" -IpAdress 192.168.0.67  -PrefixLength 24  -DefaultGateway 192.168.0.1

  Get-NETIPAddress -InterfaceAlias "ethernet0"
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
