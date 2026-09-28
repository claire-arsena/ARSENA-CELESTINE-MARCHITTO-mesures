$extension = "*.c" 

$total = 0
Get-ChildItem -Recurse -Filter $extension | ForEach-Object {
    $lignes = (Get-Content $_.FullName).Count
    $total += $lignes
    Write-Host "$($_.Name) : $lignes lignes"
}

Write-Host "---"
Write-Host "Nombre total de lignes : $total" -ForegroundColor Green