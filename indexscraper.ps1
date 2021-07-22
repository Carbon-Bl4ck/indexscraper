$URL = Read-Host -Prompt 'Enter URL: '
$DIR = Read-Host -Prompt 'Specify folder to download to: '

$w = $URL
$dex = Invoke-WebRequest -Uri $w

$dex.Links | foreach {
	$Filename = $_.href
	Invoke-Webrequest -Uri "$URL/$($_.href)" -Outfile $HOME/$DIR/$Filename
}
