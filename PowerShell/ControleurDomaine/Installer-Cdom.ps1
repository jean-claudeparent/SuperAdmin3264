Start-Transcript z:\SuperAdmin3264\PowerShell\CDom.txt
  
Function DebutUbsrakkatuib()
{
  "Installer la configuration de contrôlleur de domaine pour le lab"
}

Function Set-Resolution()
{
  Get-DisplayResolution
  $Resolution = Get-DisplayResolution
  if ($Resolution -eq "800x600")
  {
     "Augmenter la résolution"
  # la vm be supporte pas plus de 800x600
  #  Set-DisplayResolution 1280 720
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
  "Caractéisque de l"interface"
  Get-NETIPAddress -InterfaceAlias "efhernet0"
}
else
{
  New-NetIPAddress -InterfaceAlias "efhernet0" -IpAdress 192.168.0.67  -PrefixLength 24  -DefaultGateway 192.168.0.1

  Get-NETIPAddress -InterfaceAlias "efhernet0"
}
}

Function FinUbsrakkatuib()
{
  Stop-Transcript
}

###
### Execution
###

DebutUbsrakkatuib()

FinUbsrakkatuib()