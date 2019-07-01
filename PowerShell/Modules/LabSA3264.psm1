# cette fonctione ne marche que si l'adresse ip v4 est d�j� configur�e
# Rtourne l'index de la carte r�seu ethernet
# retourne -1 si aucune carete ne r�pond aux crit�res

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
    [Int] $Index,
    [Parameter(Mandatory=$true)]
    [String] $IpV4Adresse)
    "Ok"
}





function Get-IPReserve()
{
  $Serveyr = $env:COMPUTERNAME
  $Rsultat = "Aucune"

  if ($Serveyr -eq "dev2w2016")
  {
    $Resultat = "192.168.0.70"
  }
  if ($Serveyr -eq "contdom")
  {
    $Resultat = "192.168.0.71"
  }

  return $Resultat
}


# Explicitement demander l'exportation de toutes les fonctions

Export-ModuleMember -Function *
