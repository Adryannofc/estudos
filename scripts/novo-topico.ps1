param(
    [Parameter(Mandatory = $true)][string]$Nome
)

$raiz = Split-Path -Parent $PSScriptRoot
$slug = ($Nome.ToLower() -replace '[^a-z0-9]+', '-').Trim('-')
$destino = Join-Path $raiz "modulos/$slug"

if (Test-Path $destino) {
    Write-Error "O tópico '$slug' já existe."
    exit 1
}

foreach ($sub in 'notas', 'exercicios') {
    $pasta = Join-Path $destino $sub
    New-Item -ItemType Directory -Force $pasta | Out-Null
    New-Item -ItemType File -Force (Join-Path $pasta '.gitkeep') | Out-Null
}

Write-Host "Tópico criado: modulos/$slug (notas/ e exercicios/)"
