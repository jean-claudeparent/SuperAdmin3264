### Cas de test
Function TestGetIndexIpv4ok
{
  Get-NetIPAddress
  $Resultat = Get-IndexIPV4
  Write-Output ('R�sultat du test : ' + $Resultat)
  if ($Resultat -eq -1) 
  {
    throw "La fonctionn'a pas produit un r�sultat positif"
  }
  
}


Function TestSetIndexIpv4ok
{
    throw "Pas encore impl�ment�"
}

### Tests des modules
try
{
  cls
  $Journal = $PSScriptRoot + '\Log.txt'
  Start-Transcript $Journal 

  $ModuleAtester = $PSScriptRoot + '\..\Modules\LabSA3264.psm1'
  Write-Output ("Module � tester : " + $ModuleAtester)
  
  Import-Module -name  $ModuleAtester -Force -Verbose 

  # Cas de test
  TestGetIndexIpv4ok 
  TestSetIndexIpv4ok
}
catch
{
  Write-Output $PSItem

}
finally
{
    Stop-Transcript
}



