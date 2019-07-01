Write-Output "Application du profile : Profile v 1.0.0"
"Application des couleurs personnalisées"

$CouleurTexte = "Black"
$CouleurFond ="White"

# Debug
$Host.PrivateData.DebugBackgroundColor = $CouleurFond
$Host.PrivateData.DebugForegroundColor = $CouleurTexte

# Error
$Host.PrivateData.ErrorBackgroundColor = $CouleurFond
$Host.PrivateData.ErrorForegroundColor = $CouleurTexte


# Verbose
$Host.PrivateData.VerboseBackgroundColor = $CouleurFond
$Host.PrivateData.VerboseForegroundColor = $CouleurTexte

# Warning
$Host.PrivateData.WarningBackgroundColor = $CouleurFond
$Host.PrivateData.WarningForegroundColor = $CouleurTexte


# Consolepane
# les propriétés existent juste dans ise

#$Host.PrivateData.ConsolePaneBackgroundColor = $CouleurFond
#$Host.PrivateData.ConsolePaneForegroundColor = $CouleurTexte
#$Host.PrivateData.ConsolePaneTextBackgroundColor = $CouleurTexte

# Progress
$Host.PrivateData.ProgressForegroundColor  = $CouleurTexte
$Host.PrivateData.ProgressBackgroundColor  = $CouleurFond


# script
# Ces propriétés sont définies uniquement dans ise
try
{
  $Host.PrivateData.ScriptPaneBackgroundColor = $CouleurFond
  hyn$Host.PrivateData.ScriptPaneForegroundColor = $CouleurFond
}
catch
{
# c'est normal de ne rien faire dans le catch

}
# $Host.PrivateData.TokenColors = $CouleurTex
cd $PSScriptRoot
# $Host.PrivateData
