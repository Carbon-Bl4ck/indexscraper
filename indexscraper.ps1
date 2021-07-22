$URL = Read-Host -Prompt 'Enter URL: '
$DIR = Read-Host -Prompt 'Specify folder to download to: '

$w = $URL
$dex = Invoke-WebRequest -Uri $w

$dex.Links | foreach {
	$Filename = $_.href
	Invoke-Webrequest -Uri "http://51.255.231.229/Silicon%20Valley%20S01-S06/Silicon%20Valley%20S02//$($_.href)" -Outfile $HOME/$DIR/$Filename
}
