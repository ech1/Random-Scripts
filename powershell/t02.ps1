<#----------
Apprentissage
chercher un fichier dans un dossier


$cherche = $args[0]
$dossier = $args[1]
echo "Recherche du fichier $cherche dans le dossier $dossier"
Get-ChildItem -Path $dossier -Recurse -ErrorAction SilentlyContinue  |
? {$_.Name -eq $cherche} 


<#-------------------------------------------------------------------
Apprentissage PowerShell - Script n° 2
Auteur BD – 17/12/2013

$dossier = $args[0]
echo "calcul en cours sur $dossier"
Get-ChildItem -Path $dossier -Recurse -Force | 
? {$_.PSIsContainer -eq 0} | 
Measure-Object -property Length -Sum | 
ForEach-Object {
  $total = $_.sum / 1MB
  write-host -foregroundColor yellow ("le dossier "+$dossier+" contient {0:#,##0.0} MB" -f $total)
}


<#-------------------------------------------------------------------
Apprentissage PowerShell - Script n° 3
Auteur BD – 18/12/2013

while ($couleur -ne 'stop') {
$invite = "saisissez une couleur :"
$couleur = Read-Host $invite 
$listeCouleurs = @("Black","DarkBlue","DarkGreen","DarkCyan","DarkRed","DarkMagenta","DarkYellow","Gray","DarkGray","Blue","Green","Cyan","Red","Magenta","Yellow","White")
#Write-Host -ForegroundColor $couleur ("vous avez demandé à écrire en "+$couleur)
$z = 	$listeCouleurs | where-object {$_ -match $couleur}
if ($z -ne $null)  {
    Write-Host -ForegroundColor $couleur ("vous avez demandé à écrire en "+$couleur)
}
else {
    write-host ("la couleur "+$couleur+" n existe pas.")
}
}
<#-------------------------------------------------------------------
EXERCICE 1

ipcsv ".\t02-fichier.csv" -Delimiter ";" | foreach { 
	switch ($_.pro)
	{
		"informatique" {$macouleur="cyan";break}
		"direction" {$macouleur="red";break}
		"comptable" {$macouleur="yellow";break}
		"social" {$macouleur="blue";break}
		"juridique" {$macouleur="white";break}
	}
    $triGramme=$_.firstname.substring(0,1)+$_.lastname.substring(0,1)
    $triGramme = $triGramme + $_.lastname.substring($_.lastname.length-1,1)
    $trigramme = $triGramme.toUpper()
    #Write-Host ($_.firstname+" "+$_.lastname+" ("+$triGramme+") "+$_.phone1)
	write-host -ForegroundColor $macouleur $trigramme 
}



<#-------------------------------------------------------------------
EXERCICE 2
---------------------------------------------------------------------#>

#lit le fichier des utilisateurs  (LIRE ET FOREACH)
mkdir t02-exo2 2> $null
cd t02-exo2

ipcsv "..\t02-fichier.csv" -Delimiter ";" | foreach { 
	switch ($_.pro)
	{
		"informatique" {$macouleur="cyan";break}
		"direction" {$macouleur="red";break}
		"comptable" {$macouleur="yellow";break}
		"social" {$macouleur="blue";break}
		"juridique" {$macouleur="white";break}
	}
    $triGramme=$_.firstname.substring(0,1)+$_.lastname.substring(0,1)
    $triGramme = $triGramme + $_.lastname.substring($_.lastname.length-1,1)
    $trigramme = $triGramme.toUpper()
	$agence2 = $_.agency.substring(7,4)
	$trigramme2 = "fic_"+$trigramme
	write-host -ForegroundColor $macouleur $trigramme 
	#qui crée un répertoire pour chaque agence (mkdir agence/user)
	mkdir $agence2/$trigramme2 2> $null #mkdir peux créer deux fois le meme fichier
	#donc on ne veux pas voir d'erreurs, on redirige stderr vers $null
}
cd ..



































