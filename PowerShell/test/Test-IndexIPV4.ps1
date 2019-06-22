### Cas de test
Function TestGetIndexIpv4ok
{
  $Resultat = Get-IndexIPV4
  Write-Output ('Résultat du test : ' + $Resultat)
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



#$Resultat = $PSScriptRoot..\Communs\Get-IndexIPV4.ps1