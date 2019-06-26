# cette fonctione ne marche que si l'adresse ip v4 est déjà configurée
# Rtourne l'index de la carte réseu ethernet
# retourne -1 si aucune carete ne répond aux critères

function Get-IndexIPV4
{
  $indexResultat = -1
  $ListeIP = Get-NetIPAddress -AddressFamily IPv4
   foreach ($UneIP in  $ListeIP)
   {
     if ("Ethernet" -eq $UneIP.InterfaceAlias )
     {
       $indexResultat  = $UneIP.InterfaceIndex
     }
     if ("eth0" -eq $UneIP.InterfaceAlias )
     {
       $indexResultat  = $UneIP.InterfaceIndex
     }
     if ("ethernet0" -eq $UneIP.InterfaceAlias )
     {
       $indexResultat  = $UneIP.InterfaceIndex
     }
     
   }
   
   return $indexResultat
}

Function Set-IPV4()
{
  Param (
  [Parameter(Mandatory=$true)]
    Integer $Index,
    [Parameter(Mandatory=$true)]
    String $IpV4Adresse)


}

Export-ModuleMember -Function *
