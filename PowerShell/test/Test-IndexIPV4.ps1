### Cas de test
Function TestGetIndexIpv4ok
{
  Get-NetIPAddress
  $Resultat = Get-IndexIPV4
  Write-Output ('Résultat du test : ' + $Resultat)
  if ($Resultat -eq -1) 
  {
    throw "La fonctionn'a pas produit un résultat positif"
  }
  Set-IpV4Adresse -Index $Resultat -Adresse '192.168.0.98'
}



### Tests des modules
try
{
  cls
  $Journal = $PSScriptRoot + '\Log.txt'
  Start-Transcript $Journal 

  $ModuleAtester = $PSScriptRoot + '\..\Modules\LabSA3264.psm1'
  Write-Output ("Module à tester : " + $ModuleAtester)
  
  Import-Module -name  $ModuleAtester -Force -Verbose 
  TestGetIndexIpv4ok 
}
catch
{
  Write-Output $PSItem

}
finally
{
    Stop-Transcript
}



