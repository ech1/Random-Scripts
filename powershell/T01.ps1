Get-Command -commandtype cmdlet # liste les commandes de type cmdlet
Get-command -commandtype cmdlet *write* #pareil mais que les cmdlet qui ont le mot "write" 
Get-command write* #liste les cmds qui commencent par write

Get-command -CommandType cmdlet -noun object #invalide
Get-commande *-Object # invalide

Get-ChildItem C:\Users #liste les fichiers (non recursif) de C:\Users
ls C:\Users #pareil
dir C:\users #pareil

cd C:/windows #change de répertoire
ls -R #liste les fichiers récurisvement (dans chaque sous dossier)
ls -Force C:/ #liste avec privilèges administrateur ? (liste les fichiers système)

clear #enlève les lignes du terminal, pour que ça soit clean
pwd # affiche le répertoire courant

#l'alias de get-command est gmc on le trouve comme ça:
Get-Command -commandtype alias | FindSTR Get-Command
Get-Command -commandtype alias #liste tout les alias

$maVar = 'bonjour' #assigner la chaine de charactères 'bonjour' à ma variable
$mavar | Get-Member #liste les fonctions utilisables sur l'objet qu'est notre fonction
$mavar.ToUpper() #affiche le contenu de mavar en majuscules
$mavar.Length #retourne la taille (en nb de charactères) de mavar

ls /windows/*.ini #affiche tout les fichiers dont l'extension se termine par ini dans /windows
ls /windows/*p*.* #affiche tout les fichiers qui ont p et un charactère dans /windows

get-eventlog -logName system `
-newest 25 `
-entryType Error,Warning
#donne les 25 plus récentes alertes/erreurs système dans les logs windows, 

cd ~ #changer de répertoire vers le répertoire "maison"
md tp_pws # crée le dossier tp_pws
cp tp_pws #aller dans tp_pws
Get-Date > essai.txt #redirige le texte (stdout) vers le fichier essai.txt 
'une ligne' >> essai.txt #append ou ajouter la chaine de char 'une ligne' a la fin de essai.txt
cat essai.txt #afficher le contenu de essai.txt
$ligne = cat essai.txt #assigner le contenu de essai.txt a ma variable $ligne
$ligne[2] #afficher la 2nde ligne contenue dans la variable ligne
$ligne[2][5] #afficher le 5e mot à la 2nde ligne de la variable ligne
Write-Host $ligne # ????

#### PIPING ####

Get-ChildItem C:\Windows | set-content monWIndows.txt
#redirige l'output de la commande get-childitem (stdout) dans un fichier texte nommé monWIndows

Get-Process | out-file -filepath process.txt
 #pareil pour la commande get-process

Get-Service | where {$_.status -eq 'stopped'}
#get-service retourne un tableau stoqué dans la variable $_ qu'on choisis la colone status, et on filtre pour obtenir que les valeurs 'stopped'

$invite ="donner nom" #assigner texte a variable invite
$user = read-host $invite #assigner à la var user la saisie clavier de l'utilisateur, tout en affichant à l'écran le contenu de la variable $invite
Write-Output("Bonjour :"+$user) #affiche la chaine de char et le contenu de la variable $user

$date=get-date -f 'dd-MM-yyyy' #assigne le resultat de la commande get-date (avec flags de formattage) à la variable $date
Write-Output ("la date"+$date) #affiche chaine de char et le contenu de la variable
Write-Output("mois:"+$date.substring(3,2)) #affiche chaine + date 
#date = 07-09-2020
#date.substring(3,2) = 09 
Write-Output("mois:"+(Get-Date).Month) #affiche le contenu du child item Month de l'objet retourné par la commande Get-Date
$lesmois="janvier","février","décembre" #assigne une liste de chaine de char à la variable lesmois

Write-Output("lemois:"+$lesmois[$date.Substring(3,2)])
#lesmois (liste de chaine de char)
#.substring 

$dossierCookies = [System.Environment]::GetFolderPath('Cookies') #assigner a la var dossiercook le chemin absolu du dossier cookies
Write-Output $dossierCookies #afficher le contenu de la variable dossiercookies

dir $dossierCookies #lister le contenu du chemin absolu du dossier cookies

dir $dossierCookies| ? {$_.name -eq '*google*'}
#pareil mais filtre les noms des fichiers contenus dans le dossier cookies qui ont un nom
#comportant le mot google

cd ~ # retour au répertoire maison
Dir '.\Documents' ? {?_.LastWriteTime.addMonths(2) -lt (get-date)}
#affichele contenu de documents, montrant que les fichiers qui ont été modifiés il y a moins de deux mois


