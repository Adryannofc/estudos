$raiz = Split-Path -Parent $PSScriptRoot
$hoje = Get-Date -Format 'yyyy-MM-dd'
$arquivo = Join-Path $raiz "diario/$hoje.md"

if (Test-Path $arquivo) {
    Write-Host "Já existe: $arquivo"
    exit 0
}

(Get-Content (Join-Path $raiz '_templates/diario.md') -Raw -Encoding UTF8) -replace 'AAAA-MM-DD', $hoje |
    Set-Content $arquivo -Encoding UTF8 -NoNewline

Write-Host "Criado: $arquivo"
