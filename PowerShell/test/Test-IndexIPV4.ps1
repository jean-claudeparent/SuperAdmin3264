### Tests des modules
try
{
  cls
  $Journal = $PSScriptRoot + '\Log.txt'
  Start-Transcript $Journal 

  $ModuleAtester = $PSScriptRoot + '\..\Modules\'
  Write-Output ("Module � tester : " + $ModuleAtester)
  
  Import-Module -name  $ModuleAtester -Force -Verbose  
}
catch
{
  Write-Output $PSItem

}



#$Resultat = $PSScriptRoot..\Communs\Get-IndexIPV4.ps1